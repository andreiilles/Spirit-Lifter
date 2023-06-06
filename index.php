<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/navbar.css">
    <link rel="stylesheet" href="styles/body.css">
    <link rel="stylesheet" href="styles/slideshow.css">
    <link rel="stylesheet" href="styles/main.css">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <title>Acasă - Spirit Lifter</title>
</head>
<body>
    <div id="navPlaceholder"></div>
    <script>
      $(function(){
        $("#navPlaceholder").load("navbar.html");
      });
    </script>
    <div class="slideshowContainer">
        <div class="slides fade">
            <img src="https://assets.finestore.ro/image/654x615/produse/catalog/products/GG972-654x615.jpg" style="width:100%">
            <div class="text"> Jack Daniels - 0.7L</div>
        </div>
        <div class="slides fade">
            <img src="https://assets.finestore.ro/image/654x615/produse/catalog/products/HC273-654x615.jpg" style="width:100%">
            <div class="text">Jagermeister - 0.7L</div>
        </div>
        <div class="slides fade">
            <img src="https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/coniac_2/MT5731_3-654x615.jpg" style="width:100%">
            <div class="text">Hennessy VSOP Privilege - 0.7L</div>
        </div>
        <div class="slides fade">
            <img src="https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse/coniac/_10648_1_1596026343(1)-654x615.jpg" style="width:100%">
            <div class="text">Remy Martin VSOP - 0.7L</div>
        </div>
        <div class="slides fade">
            <img src="https://assets.finestore.ro/image/654x615/produse/catalog/products2/DE288_3-654x615.jpg" style="width:100%">
            <div class="text">Martell VSOP - 0.7L</div>
        </div>
    </div>
    <br>
    <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
    <script src="script/slideshow.js"></script>
    <br>
    <main>
      <div id="status" style="display: none;"></div>
        <section class="productList">
          <?php include 'products.php'; ?>
        </section>
      </main>
      <footer>
        <span><p>&copy; 2023 Spirit Lifter. Toate drepturile rezervate.</p></span>
      </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.addToCart').on('click', function() {
                var productId = $(this).data('product-id');

                $.ajax({
                    type: 'POST',
                    url: 'addToBasket.php',
                    data: {
                        product_id: productId,
                        quantity: 1
                    },
                    success: function(response) {
                        if (response === 'success') {
                            $('#status').text('Produs adăugat în coș cu succes.').show().delay(2000).fadeOut();
                        } else if (response === 'userNotLoggedIn'){
                            $('#status').text('Eroare la adăugarea produsului în coș. Trebuie să fi conectat pentru a adăuga produse în coș.').show().delay(2000).fadeOut();
                        }
                    },
                    error: function() {
                        $('#status').text('Eroare la adăugarea produsului în coș.').show().delay(2000).fadeOut();
                    }
                });
            });
        });
    </script>
    </script>
    </body>
</html>