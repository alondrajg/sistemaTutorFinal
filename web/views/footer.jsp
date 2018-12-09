<footer class="page-footer teal #ffab40 orange accent-2">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h6 class="brown-text">&copy; 2018 Sistema Tutor Inteligente</h6>
            </div>
        </div>
    </div>
    <div class="footer-copyright  #ffab40 orange accent-2">
        <div class="container white-text"> Redes sociales <a class="black-text text-lighten-3  background #fffde7 blue" href="http://facebook.com" target="_blank"  >FACEBOOK </a>/
            <a class="black-text text-lighten-3  background #fffde7 red" href="http://intagram.com" target="_blank" >INSTAGRAM </a>
        </div>
    </div>
</footer>

<!--  Scripts-->
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/js/materialize.js"></script>
<script type="text/javascript" src="/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/data-tables-script.js"></script>
<script type="text/javascript" src="/js/init.js"></script>
<script type="text/javascript" src="/js/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="/js/sweetalert.min.js"></script>
<script type="text/javascript" src="/js/scrollspy.js"></script>
<!--scrollbar-->
<script type="text/javascript" src="/js/perfect-scrollbar.min.js"></script>
<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="/js/plugins.js"></script>
<!--custom-script.js - Add your own theme custom JS-->
<script type="text/javascript" src="/js/custom-script.js"></script>
<script>
    $(document).ready(function() {
        $('.collapsible').collapsible();
        $('.button-collapse').sideNav({});
        $('.materialboxed').materialbox();
        $(".button-collapse").sideNav();
        $('.scrollspy').scrollSpy();
        $('.modal').modal();
    });
    $(document).ready(function() {
        $('#usuarios').DataTable( {
            columnDefs: [
                {
                    targets: [ 0, 1, 2 ],
                    className: 'mdl-data-table__cell--non-numeric'
                }
            ]
        } );
    } );
</script>
</body>
</html>