import React, { useState, useEffect } from 'react';
import { useAuthContext } from '../contexts/AuthContext.js';
import { useNavigate } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';
import '../styles/UserAccountPage.css';
import '../styles/Global.css';

const UserAccountPage = () => {
  const [userDetails, setUserDetails] = useState(null);
  const [savedCards, setSavedCards] = useState([]);
  const [newCard, setNewCard] = useState({ cardHolderName: '', cardNumber: '', expireDate: '', cvv: '', paymentCardType: '', });
  const [selectedCard, setSelectedCard] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [message, setMessage] = useState('');
  const { userId, setUserId, setRole, logout } = useAuthContext();

  const navigate = useNavigate();
  //fetch user details and saved cards
  const fetchUserDetails = () => {
    fetch(`http://localhost:8080/user/${userId}/details`)
      .then(response => response.json())
      .then(data => {
        if (data.error) {
          setMessage(data.error);
        } else {
          console.log("userdeets:", data);
          setUserDetails(data);
          setSavedCards(data.paymentCards);
          setNewCard({ cardHolderName: '', cardNumber: '', expireDate: '', cvv: '', paymentCardType: '', });
          setIsLoading(false);
        }
      })
      .catch(error => {
        console.error('Error fetching user details:', error);
        setMessage('Failed to load user details.');
      });
  };
  
  useEffect(() => {
    fetchUserDetails();
  }, [userId]);

  //handle updating user details
  const handleUpdateDetails = () => {
    const updatedData = { 
      first_name: userDetails.firstName,
      last_name: userDetails.lastName,
      email: userDetails.email,
      address: userDetails.address,
      paymentCards: userDetails.paymentCards,
      subscription: userDetails.subscription,
      theatreCredits: userDetails.theatreCredits,
      userId: userDetails.userId,
      };
  //  updatedData.paymentCards = [...savedCards];

    if(selectedCard){
      console.log("selected:", selectedCard);
      const updatedSavedCards = savedCards.map(card => 
        card.cardId === selectedCard.cardId ? { ...selectedCard } : card
      );
    };

    updatedData.paymentCards = savedCards.map(card => { 
      const { expireDate, ...rest } = card; 
      return { ...rest, expiryDate: expireDate }; }); 
      if (selectedCard) { 
        const updatedSavedCards = savedCards.map(card => card.cardId === selectedCard.cardId ? { ...selectedCard } : card ); 
        updatedData.paymentCards = updatedSavedCards.map(card => { 
          const { expireDate, ...rest } = card; 
          return { ...rest, expiryDate: expireDate }; 
        }
      );
    }

    console.log("updated details: ", updatedData);

    fetch(`http://localhost:8080/user/${userId}/update-details`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' }, 
      body: JSON.stringify(updatedData),
    })
      .then(response => response.json())
      .then(data => {
        alert('User details updated successfully.');
        fetchUserDetails();
      })
      .catch(error => {
        console.error('Error updating user details:', error);
        alert('Failed to update user details.');
      });
  };

  //handle paying the annual fee
  const handlePayFee = () => {
    fetch(`http://localhost:8080/user/${userId}/renew-subscription`, {
      method: 'POST',
    })
      .then(response => response.json())
      .then(data => {
        if (data.message) {
          setUserDetails({ ...userDetails, has_paid: true });
          setMessage('Annual fee paid successfully');
        } else {
          setMessage('Failed to pay annual fee.');
        }
      })
      .catch(error => {
        console.error('Error paying annual fee:', error);
        setMessage('Failed to pay annual fee.');
      });
  };

  //handle unregistering the account
  const handleUnregister = () => {
    const confirmUnregister = window.confirm('Are you sure you want to unregister?');
    if (confirmUnregister) {
      fetch(`http://localhost:8080/user/${userId}/delete-user`, {
        method: 'DELETE',
      })
        .then(response => {
          if (!response.ok) {
            throw new Error('Failed to unregister account.');
          }
          return response.text(); // Assuming the server returns a plain text response
        })
        .then(data => {
          alert('Account successfully unregistered');
          logout();
          navigate('/');
        })
        .catch(error => {
          console.error('Error unregistering:', error);
          setMessage('Failed to unregister account.');
        });
    }
  };
  
  const handleAddNewCard =()=>{
    if (!newCard.paymentCardType || !newCard.cardHolderName || !newCard.cardNumber || !newCard.cvv || !newCard.expireDate) {
      alert('Please fill in all required payment fields.');
      return;
    }

    if (!/^\d{3}$/.test(newCard.cvv)) {
      alert('Please enter a valid 3-digit CVV.');
      return;
    }

    if (!/^\d{4}-(0[1-9]|1[0-2])$/.test(newCard.expireDate)) {
      alert('Please enter a valid expiration date in YYYY-MM format.');
      return;
    }

    const newCardDetails ={
      cardId: null,
      cardNumber:newCard.cardNumber.toString(), 
      cardHolderName:newCard.cardHolderName.toString(), 
      cvv:newCard.cvv.toString(), 
      expiryDate: newCard.expireDate.toString(), 
      paymentCardType: newCard.paymentCardType.toString(),
  }

    fetch(`http://localhost:8080/user/${userId}/add-payment-card`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' }, 
      body: JSON.stringify(newCardDetails),
    })
      .then(response => response.json())
      .then(data => {
        alert('New Card Added successfully.');
        fetchUserDetails();
      })
      .catch(error => {
        console.error('Error adding new card:', error);
        alert('Failed to add new card.');
      });
  }

  const handleDeleteCard =()=>{
    if (savedCards.length <= 1){
      alert("Cannot Delete Last Saved Payment Card.")
      return;
    }
    fetch(`http://localhost:8080/user/${userId}/delete-payment-card/${selectedCard.cardId}`, {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' }, 
    })
      .then(response => response.json())
      .then(data => {
        alert('Card deleted successfully.');
        fetchUserDetails();
      })
      .catch(error => {
        console.error('Error deleting card:', error);
        alert('Failed to delete card.');
      });
  }

  // const handleBillingChange =()=>{
  //   userDetails.subscription.autoRenew = userDetails.subscription.autoRenew ? false : true;
  //   handleUpdateDetails();
  // }

  if (isLoading) {
    return <div>Loading...</div>;  //display a loading message while data is being fetched
  }

  if (!userDetails) {
    return <div>No user details available.</div>;  //if userDetails is still null or not set
  }

  return (
    <div>
      <Header />
      <div className='page-body'>
      <div className='user-account-page'>
      <h1 className='user-account-header'>User Account</h1>
        <table>
          <tr>
            <td className='user-account-input'>
              <h2>Personal Information</h2>
              <br></br>
              <label>First Name</label>
              <input
                type="text"
                value={userDetails.firstName}
                onChange={(e) => setUserDetails({ ...userDetails, firstName: e.target.value })}
              />
              <br></br>
              <label>Last Name</label>
              <input
                type="text"
                value={userDetails.lastName}
                onChange={(e) => setUserDetails({ ...userDetails, lastName: e.target.value })}
              />
              <br></br>
              <label>Email</label>
              <input
                type="email"
                value={userDetails.email}
                onChange={(e) => setUserDetails({ ...userDetails, email: e.target.value })}
              />
              <br></br>
              <label>Address</label>
              <input
                type="text"
                value={userDetails.address}
                onChange={(e) => setUserDetails({ ...userDetails, address: e.target.value })}
              />
              <button className='user-buttons' onClick={handleUpdateDetails}>Update Details</button>
            </td>

            <td>
              <h2>Saved Payment Cards</h2>
                {/* Radio select for existing cards */}
                {savedCards && savedCards.map((card, index) => (
                  <div key={index}>
                    <br/>
                    <input 
                      type="radio" 
                      id={`card-${index}`}
                      name="cardSelect" 
                      checked={selectedCard?.cardNumber === card.cardNumber} 
                      onChange={() => setSelectedCard(card)} 
                    />
                    <label htmlFor={`card-${index}`} style={{ color: 'white' }}>
                      {card.cardHolderName} ( {card.cardNumber}, {card.expireDate} )</label>
                  </div>
                ))}

                {/* option to add new card */}
                <div>
                  <br/>
                  <input 
                    type="radio" 
                    id="addNewCard"
                    name="cardSelect" 
                    checked={selectedCard === null} 
                    onChange={() => setSelectedCard(null)} 
                  />
                  <label htmlFor='addNewCard' style={{ color: 'white' }}>Add New Card</label>
                </div>

                {/*show the selected card's details for editing */}
                {selectedCard && selectedCard !== null && (
                  <div className='user-account-input'>
                    <h4>Update Card</h4>
                    <br></br>
                    <div className="payment-method-list">
                    <select value={selectedCard ? selectedCard.paymentCardType : ""}
                    onChange={(e) => setSelectedCard({ ...selectedCard, paymentCardType: e.target.value })}>
                      <option value="">Select a Payment Method</option>
                      <option value="CREDIT">CREDIT</option>
                      <option value="DEBIT">DEBIT</option>
                    </select></div>
                    <label>Cardholder Name</label>
                    <input
                      type="text"
                      placeholder="Cardholder Name"
                      value={selectedCard.cardHolderName}
                      onChange={(e) => setSelectedCard({ ...selectedCard, cardHolderName: e.target.value })}
                    />
                    <br></br>
                    <label>Card Number</label>
                    <input
                      type="text"
                      placeholder="Card Number"
                      value={selectedCard.cardNumber}
                      onChange={(e) => setSelectedCard({ ...selectedCard, cardNumber: e.target.value })}
                    />
                    <br></br>
                    <label>Expiration Date (YYYY-MM)</label>
                    <input
                      type="text"
                      placeholder="Expiry Date"
                      value={selectedCard.expireDate}
                      onChange={(e) => setSelectedCard({ ...selectedCard, expireDate: e.target.value })}
                    />
                    <br></br>
                    <label>CVV</label>
                    <input
                      type="text"
                      placeholder="CVV"
                      value={selectedCard.cvv}
                      onChange={(e) => setSelectedCard({ ...selectedCard, cvv: e.target.value })}
                    />
                    <button onClick={handleUpdateDetails}>Update Card</button>
                    <button onClick={handleDeleteCard}>Delete Card</button>
                  </div>
                )}

                {/* form to add new card */}
                {selectedCard === null && (
                  <div className='user-account-input'>
                    <br/>
                  <div className="payment-method-list">
                  <select onChange={(e) => setNewCard({ ...newCard, paymentCardType: e.target.value })}>
                    <option value="">Select a Payment Method</option>
                    <option value="CREDIT">CREDIT</option>
                    <option value="DEBIT">DEBIT</option>
                  </select></div>
                    <br></br>
                    <label>Cardholder Name</label>
                    <input
                      type="text"
                      placeholder="Cardholder Name"
                      value={newCard.cardHolderName}
                      onChange={(e) => setNewCard({ ...newCard, cardHolderName: e.target.value })}
                    />
                    <br/>
                    <label>Card Number</label>
                    <input
                      type="text"
                      placeholder="Card Number"
                      value={newCard.cardNumber}
                      onChange={(e) => setNewCard({ ...newCard, cardNumber: e.target.value })}
                    />
                    <br/>
                    <label>Expiration Date (YYYY-MM)</label>
                    <input
                      type="text"
                      placeholder="Expiry Date"
                      value={newCard.expireDate}
                      onChange={(e) => setNewCard({ ...newCard, expireDate: e.target.value })}
                    />
                    <br/>
                    <label>CVV</label>
                    <input
                      type="text"
                      placeholder="CVV"
                      value={newCard.cvv}
                      onChange={(e) => setNewCard({ ...newCard, cvv: e.target.value })}
                    />
                    <button onClick={handleAddNewCard}>Add New Card</button>
                  </div>
                )}
            </td>
          </tr>
        </table>
      </div>

      <div className='annual-payment'>
        <h2>Annual Fees</h2>
        {userDetails.subscription ? (
          <div>
            <b>Renewal:</b> {userDetails.subscription.autoRenew ? 'auto' : 'manual'}
            {!userDetails.subscription.autoRenew ? (
              <button className='user-account-button' onClick={handlePayFee}>Pay Annual Fee</button>
            ) : (
              <div><b>Billing date:</b> {new Date(userDetails.subscription.expiryDate).toString()}
              <p>Amount due: $20.00</p></div>
            )}
          </div>
        ) : (
          <div>Loading subscription data...</div>
        )}

        <button className='user-account-button' onClick={handleUnregister}>Unregister Account</button>
      </div>
      </div>
      <Footer />
    </div>
  );
};

export default UserAccountPage;
