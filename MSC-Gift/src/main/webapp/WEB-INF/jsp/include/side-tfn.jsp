<script>
jQuery(document).ready(function ($) {
	// Modal Form
	$('#free-psd').fancybox({
		padding: 0,
		content: $('#modal-form-psd'),
		helpers: {
			overlay: {
				locked: false
			}
		},
		tpl: {
			closeBtn: '<a title="Close" class="fancybox-item fancybox-close modal-form-close" href="javascript:;"></a>'
		}
	});
});
</script>
<style>
.buy-btn-wrap {
	position: fixed;
	bottom: 50px;
	right: 50px;
	width: 70px;
	height: 70px;
	border-radius: 70px;
	z-index: 3;
}
.buy-btn {
	width: 100%;
	height: 100%;
	border-radius: 100%;
	line-height: 64px;
	background: #34a5ed;
	text-align: center;
	color: #fff !important;
	display: block;
	transition: all 0.3s;
}
.buy-btn .buy-btn-val {
    font-size: 20px;
    line-height: 1;
    margin: 0;
    padding: 0;
    display: inline-block;
    vertical-align: middle;
    font-weight: 700;
    letter-spacing: 1px;
}
.buy-btn .buy-btn-val span {
    font-weight: 300;
    font-size: 15px;
    margin: 0 1px 0px 0;
    display: block;
    vertical-align: top;
    text-transform: uppercase;
    letter-spacing: 2px;
}
.buy-btn:hover:before {
	opacity: 1;
}
.buy-btn:hover:after {
	display: none;
}
.buy-btn:after {
    pointer-events: none;
    position: absolute;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    content: '';
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
    top: 0;
    left: 0;
    padding: 0;
    z-index: -1;
    box-shadow: 0 0 0 2px rgba(255,255,255,0.1);
    opacity: 0;
    -webkit-transform: scale(0.9);
    -ms-transform: scale(0.9);
    transform: scale(0.9);
    -webkit-transform-style: preserve-3d;

    animation-iteration-count:infinite;
}
.buy-btn:after {
    -webkit-animation: sonarEffect 10s ease-out;
    animation: sonarEffect 10s ease-out;
    animation-iteration-count:infinite;
}
/*sonar effect*/
@-webkit-keyframes sonarEffect {
	0% {opacity: 0.3;}
	10% {opacity: 0.5;box-shadow: 0 0 0 2px rgba(255,255,255,0.1), 0 0 10px 10px #34a5ed, 0 0 0 10px rgba(255,255,255,0.5);}
	10% {box-shadow: 0 0 0 2px rgba(255,255,255,0.1), 0 0 10px 10px #34a5ed, 0 0 0 10px rgba(255,255,255,0.5);-webkit-transform: scale(1.3);opacity: 0;}
	100% {box-shadow: 0 0 0 2px rgba(255,255,255,0.1), 0 0 10px 10px #34a5ed, 0 0 0 10px rgba(255,255,255,0.5);-webkit-transform: scale(1.3);opacity: 0;}
}
@keyframes sonarEffect {
	0% {opacity: 0.3;}
	4% {opacity: 0.5;box-shadow: 0 0 0 2px rgba(255,255,255,0.1), 0 0 10px 10px #34a5ed, 0 0 0 10px rgba(255,255,255,0.5);}
	10% {box-shadow: 0 0 0 2px rgba(255,255,255,0.1), 0 0 10px 10px #34a5ed, 0 0 0 10px rgba(255,255,255,0.5);transform: scale(1.3);opacity: 0;}
	100% {box-shadow: 0 0 0 2px rgba(255,255,255,0.1), 0 0 10px 10px #34a5ed, 0 0 0 10px rgba(255,255,255,0.5);transform: scale(1.3);opacity: 0;}
}

@media only screen and (max-width : 600px) {
	.buy-btn {
		bottom: 40px;
		right: 40px;
		width: 60px;
		height: 60px;
		border-radius: 60px;
		line-height: 65px;
	}
}
@media only screen and (max-width : 380px) {
	.buy-btn {
		bottom: 30px;
		right: 30px;
	}
}
</style>
<div class="buy-btn-wrap el-draggable">
	<a href="#" class="buy-btn" id="free-psd">
		<p class="buy-btn-val"><span>free</span>PSD</p>
	</a>
</div>