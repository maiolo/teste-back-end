import { v4 as uuidv4 } from 'uuid';

const tracking =() => {
  if(localStorage) {
    let uuid = localStorage.getItem("_UUID");
    if(uuid === null){
        localStorage.setItem("_UUID",uuidv4());
    }
  }

  $.ajax({
    type: "POST",
    url: "/trackings/",
    data: {tracking: {
      uuid: localStorage.getItem("_UUID"),
      page: window.location.pathname 
      } 
    },
  });

};

export { tracking };