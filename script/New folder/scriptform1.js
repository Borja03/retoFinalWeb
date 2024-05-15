<script>
  function validateForm() {
    var name = document.forms[0].name.value;
    var characters = document.forms[0].characters.value;
    var usd = document.forms[0].USD.value;
    var eur = document.forms[0].EUR.value;
    var gbp = document.forms[0].GBP.value;
    var jpy = document.forms[0].JPY.value;
    var date = document.forms[0].date.value;
    var language1 = document.forms[0].language1.checked;
    var artistName = document.forms[0].artistName.value;

    if (name === "" || characters === "" || usd === "" || eur === "" || gbp === "" || jpy === "" || date === "" || !language1 || artistName === "") {
      alert("Please fill in all the required fields.");
      return false;
    }

    return true;
  }
</script>