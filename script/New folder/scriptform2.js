<script>
  function validateForm() {
    var set = document.forms[0].selectSet.value;
    var price = document.forms[0].price.value;

    if (set === "" || price === "") {
      alert("Please select a set and enter a price.");
      return false;
    }

    return true;
  }
</script>