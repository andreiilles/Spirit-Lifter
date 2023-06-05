var dropdownLinks = dropdowns[i].getElementsByClassName("dropdown-content")[0].getElementsByTagName("a");
      for (var j = 0; j < dropdownLinks.length; j++) {
      dropdownLinks[j].addEventListener("click", function() {
        window.location.href = this.href;
      });
    }