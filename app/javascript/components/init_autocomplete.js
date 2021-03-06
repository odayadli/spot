import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('user_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocomplete_2 = () => {
  const addressInput = document.getElementById('service_service_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};
export { initAutocomplete };
export { initAutocomplete_2 };