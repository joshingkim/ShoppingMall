<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
 <meta charset="utf-8">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
<style>
h1 {
	font-family: 'Corben', cursive;
	font-size: 6rem;
	color: white;
	letter-spacing: 0.1rem;
	text-shadow: 0px 3px 3px rgba(0, 0, 0, 0.66);
}


body {
  background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
  overflow-x:hidden;
  overflow-y:auto;
  filter: drop-shadow(0 0 10px white);
}

.snow {
  position: absolute;
  width: 10px;
  height: 10px;
  background: white;
  border-radius: 50%;
}
.snow:nth-child(1) {
  opacity: 0.7708;
  transform: translate(0.5827vw, -10px) scale(0.039);
  animation: fall-1 24s -13s linear infinite;
}
@keyframes fall-1 {
  55.778% {
    transform: translate(-6.8967vw, 55.778vh) scale(0.039);
  }
  to {
    transform: translate(-3.157vw, 100vh) scale(0.039);
  }
}
.snow:nth-child(2) {
  opacity: 0.8377;
  transform: translate(82.0742vw, -10px) scale(0.6853);
  animation: fall-2 20s -7s linear infinite;
}
@keyframes fall-2 {
  55.799% {
    transform: translate(80.7365vw, 55.799vh) scale(0.6853);
  }
  to {
    transform: translate(81.40535vw, 100vh) scale(0.6853);
  }
}
.snow:nth-child(3) {
  opacity: 0.0537;
  transform: translate(43.9009vw, -10px) scale(0.4273);
  animation: fall-3 27s -26s linear infinite;
}
@keyframes fall-3 {
  62.816% {
    transform: translate(46.3935vw, 62.816vh) scale(0.4273);
  }
  to {
    transform: translate(45.1472vw, 100vh) scale(0.4273);
  }
}
.snow:nth-child(4) {
  opacity: 0.9012;
  transform: translate(93.0361vw, -10px) scale(0.9655);
  animation: fall-4 23s -23s linear infinite;
}
@keyframes fall-4 {
  57.959% {
    transform: translate(85.0475vw, 57.959vh) scale(0.9655);
  }
  to {
    transform: translate(89.0418vw, 100vh) scale(0.9655);
  }
}
.snow:nth-child(5) {
  opacity: 0.4456;
  transform: translate(54.6422vw, -10px) scale(0.8456);
  animation: fall-5 11s -5s linear infinite;
}
@keyframes fall-5 {
  36.116% {
    transform: translate(51.4928vw, 36.116vh) scale(0.8456);
  }
  to {
    transform: translate(53.0675vw, 100vh) scale(0.8456);
  }
}
.snow:nth-child(6) {
  opacity: 0.4111;
  transform: translate(57.2011vw, -10px) scale(0.6613);
  animation: fall-6 23s -5s linear infinite;
}
@keyframes fall-6 {
  72.216% {
    transform: translate(65.8932vw, 72.216vh) scale(0.6613);
  }
  to {
    transform: translate(61.54715vw, 100vh) scale(0.6613);
  }
}
.snow:nth-child(7) {
  opacity: 0.164;
  transform: translate(67.1284vw, -10px) scale(0.4597);
  animation: fall-7 13s -20s linear infinite;
}
@keyframes fall-7 {
  78.935% {
    transform: translate(69.2107vw, 78.935vh) scale(0.4597);
  }
  to {
    transform: translate(68.16955vw, 100vh) scale(0.4597);
  }
}
.snow:nth-child(8) {
  opacity: 0.0153;
  transform: translate(31.7385vw, -10px) scale(0.1207);
  animation: fall-8 14s -25s linear infinite;
}
@keyframes fall-8 {
  32.341% {
    transform: translate(23.0861vw, 32.341vh) scale(0.1207);
  }
  to {
    transform: translate(27.4123vw, 100vh) scale(0.1207);
  }
}
.snow:nth-child(9) {
  opacity: 0.5908;
  transform: translate(93.8196vw, -10px) scale(0.4719);
  animation: fall-9 30s -5s linear infinite;
}
@keyframes fall-9 {
  34.5% {
    transform: translate(103.6864vw, 34.5vh) scale(0.4719);
  }
  to {
    transform: translate(98.753vw, 100vh) scale(0.4719);
  }
}
.snow:nth-child(10) {
  opacity: 0.9257;
  transform: translate(13.4641vw, -10px) scale(0.6195);
  animation: fall-10 11s -2s linear infinite;
}
@keyframes fall-10 {
  36.087% {
    transform: translate(18.9879vw, 36.087vh) scale(0.6195);
  }
  to {
    transform: translate(16.226vw, 100vh) scale(0.6195);
  }
}
.snow:nth-child(11) {
  opacity: 0.5985;
  transform: translate(64.404vw, -10px) scale(0.4327);
  animation: fall-11 16s -22s linear infinite;
}
@keyframes fall-11 {
  42.367% {
    transform: translate(69.4815vw, 42.367vh) scale(0.4327);
  }
  to {
    transform: translate(66.94275vw, 100vh) scale(0.4327);
  }
}
.snow:nth-child(12) {
  opacity: 0.0465;
  transform: translate(18.4473vw, -10px) scale(0.5788);
  animation: fall-12 20s -1s linear infinite;
}
@keyframes fall-12 {
  47.103% {
    transform: translate(17.6237vw, 47.103vh) scale(0.5788);
  }
  to {
    transform: translate(18.0355vw, 100vh) scale(0.5788);
  }
}
.snow:nth-child(13) {
  opacity: 0.6959;
  transform: translate(51.853vw, -10px) scale(0.9478);
  animation: fall-13 21s -27s linear infinite;
}
@keyframes fall-13 {
  75.009% {
    transform: translate(47.3505vw, 75.009vh) scale(0.9478);
  }
  to {
    transform: translate(49.60175vw, 100vh) scale(0.9478);
  }
}
.snow:nth-child(14) {
  opacity: 0.2238;
  transform: translate(1.9845vw, -10px) scale(0.2798);
  animation: fall-14 30s -3s linear infinite;
}
@keyframes fall-14 {
  59.304% {
    transform: translate(-7.8077vw, 59.304vh) scale(0.2798);
  }
  to {
    transform: translate(-2.9116vw, 100vh) scale(0.2798);
  }
}
.snow:nth-child(15) {
  opacity: 0.651;
  transform: translate(39.797vw, -10px) scale(0.7436);
  animation: fall-15 13s -19s linear infinite;
}
@keyframes fall-15 {
  55.525% {
    transform: translate(32.6232vw, 55.525vh) scale(0.7436);
  }
  to {
    transform: translate(36.2101vw, 100vh) scale(0.7436);
  }
}
.snow:nth-child(16) {
  opacity: 0.7527;
  transform: translate(72.6159vw, -10px) scale(0.2983);
  animation: fall-16 26s -9s linear infinite;
}
@keyframes fall-16 {
  73.244% {
    transform: translate(81.5343vw, 73.244vh) scale(0.2983);
  }
  to {
    transform: translate(77.0751vw, 100vh) scale(0.2983);
  }
}
.snow:nth-child(17) {
  opacity: 0.8883;
  transform: translate(26.4014vw, -10px) scale(0.0856);
  animation: fall-17 28s -29s linear infinite;
}
@keyframes fall-17 {
  62.843% {
    transform: translate(31.334vw, 62.843vh) scale(0.0856);
  }
  to {
    transform: translate(28.8677vw, 100vh) scale(0.0856);
  }
}
.snow:nth-child(18) {
  opacity: 0.0364;
  transform: translate(97.836vw, -10px) scale(0.7128);
  animation: fall-18 10s -9s linear infinite;
}
@keyframes fall-18 {
  49.511% {
    transform: translate(104.192vw, 49.511vh) scale(0.7128);
  }
  to {
    transform: translate(101.014vw, 100vh) scale(0.7128);
  }
}
.snow:nth-child(19) {
  opacity: 0.6009;
  transform: translate(93.5098vw, -10px) scale(0.5821);
  animation: fall-19 28s -11s linear infinite;
}
@keyframes fall-19 {
  50.083% {
    transform: translate(94.2053vw, 50.083vh) scale(0.5821);
  }
  to {
    transform: translate(93.85755vw, 100vh) scale(0.5821);
  }
}
.snow:nth-child(20) {
  opacity: 0.9519;
  transform: translate(87.7953vw, -10px) scale(0.3593);
  animation: fall-20 13s -28s linear infinite;
}
@keyframes fall-20 {
  68.34% {
    transform: translate(92.2496vw, 68.34vh) scale(0.3593);
  }
  to {
    transform: translate(90.02245vw, 100vh) scale(0.3593);
  }
}
.snow:nth-child(21) {
  opacity: 0.3157;
  transform: translate(47.8415vw, -10px) scale(0.0475);
  animation: fall-21 23s -18s linear infinite;
}
@keyframes fall-21 {
  39.384% {
    transform: translate(49.0134vw, 39.384vh) scale(0.0475);
  }
  to {
    transform: translate(48.42745vw, 100vh) scale(0.0475);
  }
}
.snow:nth-child(22) {
  opacity: 0.3349;
  transform: translate(65.4662vw, -10px) scale(0.5427);
  animation: fall-22 28s -12s linear infinite;
}
@keyframes fall-22 {
  40.756% {
    transform: translate(56.0984vw, 40.756vh) scale(0.5427);
  }
  to {
    transform: translate(60.7823vw, 100vh) scale(0.5427);
  }
}
.snow:nth-child(23) {
  opacity: 0.7734;
  transform: translate(76.3097vw, -10px) scale(0.6238);
  animation: fall-23 29s -12s linear infinite;
}
@keyframes fall-23 {
  71.614% {
    transform: translate(72.1398vw, 71.614vh) scale(0.6238);
  }
  to {
    transform: translate(74.22475vw, 100vh) scale(0.6238);
  }
}
.snow:nth-child(24) {
  opacity: 0.7256;
  transform: translate(14.7915vw, -10px) scale(0.03);
  animation: fall-24 17s -1s linear infinite;
}
@keyframes fall-24 {
  73.994% {
    transform: translate(16.4017vw, 73.994vh) scale(0.03);
  }
  to {
    transform: translate(15.5966vw, 100vh) scale(0.03);
  }
}
.snow:nth-child(25) {
  opacity: 0.6197;
  transform: translate(64.6469vw, -10px) scale(0.1294);
  animation: fall-25 27s -27s linear infinite;
}
@keyframes fall-25 {
  77.518% {
    transform: translate(70.2103vw, 77.518vh) scale(0.1294);
  }
  to {
    transform: translate(67.4286vw, 100vh) scale(0.1294);
  }
}
.snow:nth-child(26) {
  opacity: 0.8485;
  transform: translate(36.9737vw, -10px) scale(0.9658);
  animation: fall-26 16s -24s linear infinite;
}
@keyframes fall-26 {
  69.611% {
    transform: translate(34.1173vw, 69.611vh) scale(0.9658);
  }
  to {
    transform: translate(35.5455vw, 100vh) scale(0.9658);
  }
}
.snow:nth-child(27) {
  opacity: 0.6522;
  transform: translate(66.6993vw, -10px) scale(0.4694);
  animation: fall-27 23s -16s linear infinite;
}
@keyframes fall-27 {
  74.289% {
    transform: translate(73.274vw, 74.289vh) scale(0.4694);
  }
  to {
    transform: translate(69.98665vw, 100vh) scale(0.4694);
  }
}
.snow:nth-child(28) {
  opacity: 0.6413;
  transform: translate(21.0543vw, -10px) scale(0.16);
  animation: fall-28 19s -9s linear infinite;
}
@keyframes fall-28 {
  63.171% {
    transform: translate(21.4026vw, 63.171vh) scale(0.16);
  }
  to {
    transform: translate(21.22845vw, 100vh) scale(0.16);
  }
}
.snow:nth-child(29) {
  opacity: 0.104;
  transform: translate(61.6113vw, -10px) scale(0.3327);
  animation: fall-29 29s -16s linear infinite;
}
@keyframes fall-29 {
  62.014% {
    transform: translate(57.2773vw, 62.014vh) scale(0.3327);
  }
  to {
    transform: translate(59.4443vw, 100vh) scale(0.3327);
  }
}
.snow:nth-child(30) {
  opacity: 0.9243;
  transform: translate(25.0056vw, -10px) scale(0.0002);
  animation: fall-30 26s -14s linear infinite;
}
@keyframes fall-30 {
  36.813% {
    transform: translate(22.9535vw, 36.813vh) scale(0.0002);
  }
  to {
    transform: translate(23.97955vw, 100vh) scale(0.0002);
  }
}
.snow:nth-child(31) {
  opacity: 0.081;
  transform: translate(30.6875vw, -10px) scale(0.6206);
  animation: fall-31 27s -29s linear infinite;
}
@keyframes fall-31 {
  36.037% {
    transform: translate(35.506vw, 36.037vh) scale(0.6206);
  }
  to {
    transform: translate(33.09675vw, 100vh) scale(0.6206);
  }
}
.snow:nth-child(32) {
  opacity: 0.2042;
  transform: translate(69.0772vw, -10px) scale(0.3011);
  animation: fall-32 23s -29s linear infinite;
}
@keyframes fall-32 {
  67.993% {
    transform: translate(75.2025vw, 67.993vh) scale(0.3011);
  }
  to {
    transform: translate(72.13985vw, 100vh) scale(0.3011);
  }
}
.snow:nth-child(33) {
  opacity: 0.2201;
  transform: translate(16.2111vw, -10px) scale(0.3862);
  animation: fall-33 30s -13s linear infinite;
}
@keyframes fall-33 {
  45.024% {
    transform: translate(10.955vw, 45.024vh) scale(0.3862);
  }
  to {
    transform: translate(13.58305vw, 100vh) scale(0.3862);
  }
}
.snow:nth-child(34) {
  opacity: 0.7924;
  transform: translate(46.7693vw, -10px) scale(0.2073);
  animation: fall-34 15s -12s linear infinite;
}
@keyframes fall-34 {
  45.664% {
    transform: translate(49.148vw, 45.664vh) scale(0.2073);
  }
  to {
    transform: translate(47.95865vw, 100vh) scale(0.2073);
  }
}
.snow:nth-child(35) {
  opacity: 0.2948;
  transform: translate(58.2854vw, -10px) scale(0.7891);
  animation: fall-35 10s -21s linear infinite;
}
@keyframes fall-35 {
  57.932% {
    transform: translate(67.129vw, 57.932vh) scale(0.7891);
  }
  to {
    transform: translate(62.7072vw, 100vh) scale(0.7891);
  }
}
.snow:nth-child(36) {
  opacity: 0.9385;
  transform: translate(40.3405vw, -10px) scale(0.7518);
  animation: fall-36 23s -14s linear infinite;
}
@keyframes fall-36 {
  40.621% {
    transform: translate(36.2431vw, 40.621vh) scale(0.7518);
  }
  to {
    transform: translate(38.2918vw, 100vh) scale(0.7518);
  }
}
.snow:nth-child(37) {
  opacity: 0.5205;
  transform: translate(53.9347vw, -10px) scale(0.3456);
  animation: fall-37 29s -1s linear infinite;
}
@keyframes fall-37 {
  32.468% {
    transform: translate(44.7392vw, 32.468vh) scale(0.3456);
  }
  to {
    transform: translate(49.33695vw, 100vh) scale(0.3456);
  }
}
.snow:nth-child(38) {
  opacity: 0.7042;
  transform: translate(98.2953vw, -10px) scale(0.3529);
  animation: fall-38 27s -19s linear infinite;
}
@keyframes fall-38 {
  79.631% {
    transform: translate(107.5278vw, 79.631vh) scale(0.3529);
  }
  to {
    transform: translate(102.91155vw, 100vh) scale(0.3529);
  }
}
.snow:nth-child(39) {
  opacity: 0.0039;
  transform: translate(73.7901vw, -10px) scale(0.3756);
  animation: fall-39 30s -30s linear infinite;
}
@keyframes fall-39 {
  30.48% {
    transform: translate(71.8586vw, 30.48vh) scale(0.3756);
  }
  to {
    transform: translate(72.82435vw, 100vh) scale(0.3756);
  }
}
.snow:nth-child(40) {
  opacity: 0.4741;
  transform: translate(65.6011vw, -10px) scale(0.1483);
  animation: fall-40 21s -24s linear infinite;
}
@keyframes fall-40 {
  69.554% {
    transform: translate(60.9402vw, 69.554vh) scale(0.1483);
  }
  to {
    transform: translate(63.27065vw, 100vh) scale(0.1483);
  }
}
.snow:nth-child(41) {
  opacity: 0.2531;
  transform: translate(57.2613vw, -10px) scale(0.9422);
  animation: fall-41 24s -30s linear infinite;
}
@keyframes fall-41 {
  74.118% {
    transform: translate(55.0463vw, 74.118vh) scale(0.9422);
  }
  to {
    transform: translate(56.1538vw, 100vh) scale(0.9422);
  }
}
.snow:nth-child(42) {
  opacity: 0.0286;
  transform: translate(11.9024vw, -10px) scale(0.4695);
  animation: fall-42 18s -11s linear infinite;
}
@keyframes fall-42 {
  71.684% {
    transform: translate(18.036vw, 71.684vh) scale(0.4695);
  }
  to {
    transform: translate(14.9692vw, 100vh) scale(0.4695);
  }
}
.snow:nth-child(43) {
  opacity: 0.0644;
  transform: translate(47.3368vw, -10px) scale(0.3972);
  animation: fall-43 26s -3s linear infinite;
}
@keyframes fall-43 {
  47.673% {
    transform: translate(41.4039vw, 47.673vh) scale(0.3972);
  }
  to {
    transform: translate(44.37035vw, 100vh) scale(0.3972);
  }
}
.snow:nth-child(44) {
  opacity: 0.3858;
  transform: translate(95.2755vw, -10px) scale(0.9757);
  animation: fall-44 26s -29s linear infinite;
}
@keyframes fall-44 {
  39.105% {
    transform: translate(104.8431vw, 39.105vh) scale(0.9757);
  }
  to {
    transform: translate(100.0593vw, 100vh) scale(0.9757);
  }
}
.snow:nth-child(45) {
  opacity: 0.237;
  transform: translate(70.8278vw, -10px) scale(0.3552);
  animation: fall-45 26s -6s linear infinite;
}
@keyframes fall-45 {
  47.347% {
    transform: translate(76.0043vw, 47.347vh) scale(0.3552);
  }
  to {
    transform: translate(73.41605vw, 100vh) scale(0.3552);
  }
}
.snow:nth-child(46) {
  opacity: 0.5973;
  transform: translate(27.1983vw, -10px) scale(0.042);
  animation: fall-46 24s -24s linear infinite;
}
@keyframes fall-46 {
  56.76% {
    transform: translate(30.7187vw, 56.76vh) scale(0.042);
  }
  to {
    transform: translate(28.9585vw, 100vh) scale(0.042);
  }
}
.snow:nth-child(47) {
  opacity: 0.7435;
  transform: translate(52.4481vw, -10px) scale(0.0613);
  animation: fall-47 30s -29s linear infinite;
}
@keyframes fall-47 {
  56.824% {
    transform: translate(43.6742vw, 56.824vh) scale(0.0613);
  }
  to {
    transform: translate(48.06115vw, 100vh) scale(0.0613);
  }
}
.snow:nth-child(48) {
  opacity: 0.6641;
  transform: translate(34.1955vw, -10px) scale(0.3289);
  animation: fall-48 21s -4s linear infinite;
}
@keyframes fall-48 {
  40.934% {
    transform: translate(31.1045vw, 40.934vh) scale(0.3289);
  }
  to {
    transform: translate(32.65vw, 100vh) scale(0.3289);
  }
}
.snow:nth-child(49) {
  opacity: 0.8352;
  transform: translate(50.8897vw, -10px) scale(0.1872);
  animation: fall-49 25s -22s linear infinite;
}
@keyframes fall-49 {
  62.017% {
    transform: translate(45.9989vw, 62.017vh) scale(0.1872);
  }
  to {
    transform: translate(48.4443vw, 100vh) scale(0.1872);
  }
}
.snow:nth-child(50) {
  opacity: 0.0293;
  transform: translate(84.3683vw, -10px) scale(0.9292);
  animation: fall-50 22s -21s linear infinite;
}
@keyframes fall-50 {
  34.783% {
    transform: translate(86.015vw, 34.783vh) scale(0.9292);
  }
  to {
    transform: translate(85.19165vw, 100vh) scale(0.9292);
  }
}
.snow:nth-child(51) {
  opacity: 0.2123;
  transform: translate(53.874vw, -10px) scale(0.0182);
  animation: fall-51 10s -27s linear infinite;
}
@keyframes fall-51 {
  43.156% {
    transform: translate(44.6019vw, 43.156vh) scale(0.0182);
  }
  to {
    transform: translate(49.23795vw, 100vh) scale(0.0182);
  }
}
.snow:nth-child(52) {
  opacity: 0.9526;
  transform: translate(6.8973vw, -10px) scale(0.5389);
  animation: fall-52 17s -7s linear infinite;
}
@keyframes fall-52 {
  42.227% {
    transform: translate(5.9321vw, 42.227vh) scale(0.5389);
  }
  to {
    transform: translate(6.4147vw, 100vh) scale(0.5389);
  }
}
.snow:nth-child(53) {
  opacity: 0.7611;
  transform: translate(22.9243vw, -10px) scale(0.9145);
  animation: fall-53 16s -8s linear infinite;
}
@keyframes fall-53 {
  60.292% {
    transform: translate(21.942vw, 60.292vh) scale(0.9145);
  }
  to {
    transform: translate(22.43315vw, 100vh) scale(0.9145);
  }
}
.snow:nth-child(54) {
  opacity: 0.3115;
  transform: translate(43.1316vw, -10px) scale(0.3847);
  animation: fall-54 17s -19s linear infinite;
}
@keyframes fall-54 {
  40.772% {
    transform: translate(43.5884vw, 40.772vh) scale(0.3847);
  }
  to {
    transform: translate(43.36vw, 100vh) scale(0.3847);
  }
}
.snow:nth-child(55) {
  opacity: 0.4078;
  transform: translate(35.2492vw, -10px) scale(0.5474);
  animation: fall-55 11s -8s linear infinite;
}
@keyframes fall-55 {
  58.745% {
    transform: translate(36.1013vw, 58.745vh) scale(0.5474);
  }
  to {
    transform: translate(35.67525vw, 100vh) scale(0.5474);
  }
}
.snow:nth-child(56) {
  opacity: 0.8302;
  transform: translate(45.9808vw, -10px) scale(0.7019);
  animation: fall-56 26s -24s linear infinite;
}
@keyframes fall-56 {
  73.491% {
    transform: translate(51.217vw, 73.491vh) scale(0.7019);
  }
  to {
    transform: translate(48.5989vw, 100vh) scale(0.7019);
  }
}
.snow:nth-child(57) {
  opacity: 0.5467;
  transform: translate(68.0507vw, -10px) scale(0.0896);
  animation: fall-57 13s -23s linear infinite;
}
@keyframes fall-57 {
  38.716% {
    transform: translate(72.2336vw, 38.716vh) scale(0.0896);
  }
  to {
    transform: translate(70.14215vw, 100vh) scale(0.0896);
  }
}
.snow:nth-child(58) {
  opacity: 0.0573;
  transform: translate(84.9989vw, -10px) scale(0.6372);
  animation: fall-58 14s -13s linear infinite;
}
@keyframes fall-58 {
  33.538% {
    transform: translate(92.6407vw, 33.538vh) scale(0.6372);
  }
  to {
    transform: translate(88.8198vw, 100vh) scale(0.6372);
  }
}
.snow:nth-child(59) {
  opacity: 0.8344;
  transform: translate(11.0096vw, -10px) scale(0.5507);
  animation: fall-59 10s -11s linear infinite;
}
@keyframes fall-59 {
  69.572% {
    transform: translate(20.6539vw, 69.572vh) scale(0.5507);
  }
  to {
    transform: translate(15.83175vw, 100vh) scale(0.5507);
  }
}
.snow:nth-child(60) {
  opacity: 0.7893;
  transform: translate(2.3311vw, -10px) scale(0.094);
  animation: fall-60 22s -2s linear infinite;
}
@keyframes fall-60 {
  67.695% {
    transform: translate(-6.8776vw, 67.695vh) scale(0.094);
  }
  to {
    transform: translate(-2.27325vw, 100vh) scale(0.094);
  }
}
.snow:nth-child(61) {
  opacity: 0.1148;
  transform: translate(84.1839vw, -10px) scale(0.3303);
  animation: fall-61 30s -24s linear infinite;
}
@keyframes fall-61 {
  31.026% {
    transform: translate(90.0065vw, 31.026vh) scale(0.3303);
  }
  to {
    transform: translate(87.0952vw, 100vh) scale(0.3303);
  }
}
.snow:nth-child(62) {
  opacity: 0.1096;
  transform: translate(1.2642vw, -10px) scale(0.1943);
  animation: fall-62 23s -14s linear infinite;
}
@keyframes fall-62 {
  63.947% {
    transform: translate(-1.5655vw, 63.947vh) scale(0.1943);
  }
  to {
    transform: translate(-0.15065vw, 100vh) scale(0.1943);
  }
}
.snow:nth-child(63) {
  opacity: 0.9833;
  transform: translate(48.9458vw, -10px) scale(0.4616);
  animation: fall-63 23s -10s linear infinite;
}
@keyframes fall-63 {
  58.192% {
    transform: translate(56.5706vw, 58.192vh) scale(0.4616);
  }
  to {
    transform: translate(52.7582vw, 100vh) scale(0.4616);
  }
}
.snow:nth-child(64) {
  opacity: 0.6445;
  transform: translate(9.806vw, -10px) scale(0.2669);
  animation: fall-64 29s -23s linear infinite;
}
@keyframes fall-64 {
  67.401% {
    transform: translate(17.3316vw, 67.401vh) scale(0.2669);
  }
  to {
    transform: translate(13.5688vw, 100vh) scale(0.2669);
  }
}
.snow:nth-child(65) {
  opacity: 0.8114;
  transform: translate(4.0851vw, -10px) scale(0.8967);
  animation: fall-65 17s -10s linear infinite;
}
@keyframes fall-65 {
  60.388% {
    transform: translate(11.1645vw, 60.388vh) scale(0.8967);
  }
  to {
    transform: translate(7.6248vw, 100vh) scale(0.8967);
  }
}
.snow:nth-child(66) {
  opacity: 0.8739;
  transform: translate(82.8105vw, -10px) scale(0.8198);
  animation: fall-66 15s -8s linear infinite;
}
@keyframes fall-66 {
  51.989% {
    transform: translate(83.0639vw, 51.989vh) scale(0.8198);
  }
  to {
    transform: translate(82.9372vw, 100vh) scale(0.8198);
  }
}
.snow:nth-child(67) {
  opacity: 0.9217;
  transform: translate(51.2472vw, -10px) scale(0.015);
  animation: fall-67 22s -5s linear infinite;
}
@keyframes fall-67 {
  49.412% {
    transform: translate(43.9714vw, 49.412vh) scale(0.015);
  }
  to {
    transform: translate(47.6093vw, 100vh) scale(0.015);
  }
}
.snow:nth-child(68) {
  opacity: 0.9261;
  transform: translate(96.3925vw, -10px) scale(0.1553);
  animation: fall-68 26s -21s linear infinite;
}
@keyframes fall-68 {
  58.092% {
    transform: translate(101.7558vw, 58.092vh) scale(0.1553);
  }
  to {
    transform: translate(99.07415vw, 100vh) scale(0.1553);
  }
}
.snow:nth-child(69) {
  opacity: 0.3012;
  transform: translate(50.2446vw, -10px) scale(0.7305);
  animation: fall-69 27s -20s linear infinite;
}
@keyframes fall-69 {
  49.961% {
    transform: translate(47.8311vw, 49.961vh) scale(0.7305);
  }
  to {
    transform: translate(49.03785vw, 100vh) scale(0.7305);
  }
}
.snow:nth-child(70) {
  opacity: 0.8869;
  transform: translate(88.841vw, -10px) scale(0.6275);
  animation: fall-70 10s -19s linear infinite;
}
@keyframes fall-70 {
  76.477% {
    transform: translate(93.7859vw, 76.477vh) scale(0.6275);
  }
  to {
    transform: translate(91.31345vw, 100vh) scale(0.6275);
  }
}
.snow:nth-child(71) {
  opacity: 0.0427;
  transform: translate(36.8615vw, -10px) scale(0.4558);
  animation: fall-71 16s -9s linear infinite;
}
@keyframes fall-71 {
  36.002% {
    transform: translate(27.6644vw, 36.002vh) scale(0.4558);
  }
  to {
    transform: translate(32.26295vw, 100vh) scale(0.4558);
  }
}
.snow:nth-child(72) {
  opacity: 0.5772;
  transform: translate(69.285vw, -10px) scale(0.1042);
  animation: fall-72 24s -2s linear infinite;
}
@keyframes fall-72 {
  76.253% {
    transform: translate(67.3582vw, 76.253vh) scale(0.1042);
  }
  to {
    transform: translate(68.3216vw, 100vh) scale(0.1042);
  }
}
.snow:nth-child(73) {
  opacity: 0.8234;
  transform: translate(81.3399vw, -10px) scale(0.4676);
  animation: fall-73 12s -10s linear infinite;
}
@keyframes fall-73 {
  45.072% {
    transform: translate(85.3622vw, 45.072vh) scale(0.4676);
  }
  to {
    transform: translate(83.35105vw, 100vh) scale(0.4676);
  }
}
.snow:nth-child(74) {
  opacity: 0.4475;
  transform: translate(14.5199vw, -10px) scale(0.1682);
  animation: fall-74 26s -20s linear infinite;
}
@keyframes fall-74 {
  68.354% {
    transform: translate(21.1628vw, 68.354vh) scale(0.1682);
  }
  to {
    transform: translate(17.84135vw, 100vh) scale(0.1682);
  }
}
.snow:nth-child(75) {
  opacity: 0.1411;
  transform: translate(15.2946vw, -10px) scale(0.2191);
  animation: fall-75 25s -21s linear infinite;
}
@keyframes fall-75 {
  46.943% {
    transform: translate(16.4819vw, 46.943vh) scale(0.2191);
  }
  to {
    transform: translate(15.88825vw, 100vh) scale(0.2191);
  }
}
.snow:nth-child(76) {
  opacity: 0.6503;
  transform: translate(18.6249vw, -10px) scale(0.8964);
  animation: fall-76 13s -1s linear infinite;
}
@keyframes fall-76 {
  56.783% {
    transform: translate(20.3395vw, 56.783vh) scale(0.8964);
  }
  to {
    transform: translate(19.4822vw, 100vh) scale(0.8964);
  }
}
.snow:nth-child(77) {
  opacity: 0.0466;
  transform: translate(53.7341vw, -10px) scale(0.3593);
  animation: fall-77 11s -21s linear infinite;
}
@keyframes fall-77 {
  54.025% {
    transform: translate(49.2874vw, 54.025vh) scale(0.3593);
  }
  to {
    transform: translate(51.51075vw, 100vh) scale(0.3593);
  }
}
.snow:nth-child(78) {
  opacity: 0.1556;
  transform: translate(32.2131vw, -10px) scale(0.6194);
  animation: fall-78 16s -5s linear infinite;
}
@keyframes fall-78 {
  75.074% {
    transform: translate(38.4238vw, 75.074vh) scale(0.6194);
  }
  to {
    transform: translate(35.31845vw, 100vh) scale(0.6194);
  }
}
.snow:nth-child(79) {
  opacity: 0.0245;
  transform: translate(15.5954vw, -10px) scale(0.9043);
  animation: fall-79 14s -10s linear infinite;
}
@keyframes fall-79 {
  44.308% {
    transform: translate(11.359vw, 44.308vh) scale(0.9043);
  }
  to {
    transform: translate(13.4772vw, 100vh) scale(0.9043);
  }
}
.snow:nth-child(80) {
  opacity: 0.9997;
  transform: translate(37.1177vw, -10px) scale(0.9444);
  animation: fall-80 22s -29s linear infinite;
}
@keyframes fall-80 {
  36.089% {
    transform: translate(43.7929vw, 36.089vh) scale(0.9444);
  }
  to {
    transform: translate(40.4553vw, 100vh) scale(0.9444);
  }
}
.snow:nth-child(81) {
  opacity: 0.7781;
  transform: translate(52.598vw, -10px) scale(0.7936);
  animation: fall-81 24s -15s linear infinite;
}
@keyframes fall-81 {
  49.557% {
    transform: translate(52.7972vw, 49.557vh) scale(0.7936);
  }
  to {
    transform: translate(52.6976vw, 100vh) scale(0.7936);
  }
}
.snow:nth-child(82) {
  opacity: 0.8045;
  transform: translate(81.7211vw, -10px) scale(0.4295);
  animation: fall-82 17s -25s linear infinite;
}
@keyframes fall-82 {
  61.771% {
    transform: translate(84.8786vw, 61.771vh) scale(0.4295);
  }
  to {
    transform: translate(83.29985vw, 100vh) scale(0.4295);
  }
}
.snow:nth-child(83) {
  opacity: 0.4673;
  transform: translate(49.6108vw, -10px) scale(0.2253);
  animation: fall-83 20s -1s linear infinite;
}
@keyframes fall-83 {
  49.85% {
    transform: translate(50.478vw, 49.85vh) scale(0.2253);
  }
  to {
    transform: translate(50.0444vw, 100vh) scale(0.2253);
  }
}
.snow:nth-child(84) {
  opacity: 0.3928;
  transform: translate(7.1929vw, -10px) scale(0.7048);
  animation: fall-84 22s -28s linear infinite;
}
@keyframes fall-84 {
  44.753% {
    transform: translate(1.699vw, 44.753vh) scale(0.7048);
  }
  to {
    transform: translate(4.44595vw, 100vh) scale(0.7048);
  }
}
.snow:nth-child(85) {
  opacity: 0.7309;
  transform: translate(6.0131vw, -10px) scale(0.8509);
  animation: fall-85 25s -25s linear infinite;
}
@keyframes fall-85 {
  71.209% {
    transform: translate(11.9644vw, 71.209vh) scale(0.8509);
  }
  to {
    transform: translate(8.98875vw, 100vh) scale(0.8509);
  }
}
.snow:nth-child(86) {
  opacity: 0.7957;
  transform: translate(91.0252vw, -10px) scale(0.6253);
  animation: fall-86 19s -17s linear infinite;
}
@keyframes fall-86 {
  66.222% {
    transform: translate(82.4617vw, 66.222vh) scale(0.6253);
  }
  to {
    transform: translate(86.74345vw, 100vh) scale(0.6253);
  }
}
.snow:nth-child(87) {
  opacity: 0.0783;
  transform: translate(31.1878vw, -10px) scale(0.3467);
  animation: fall-87 15s -15s linear infinite;
}
@keyframes fall-87 {
  31.712% {
    transform: translate(38.0599vw, 31.712vh) scale(0.3467);
  }
  to {
    transform: translate(34.62385vw, 100vh) scale(0.3467);
  }
}
.snow:nth-child(88) {
  opacity: 0.8636;
  transform: translate(21.8301vw, -10px) scale(0.0557);
  animation: fall-88 15s -11s linear infinite;
}
@keyframes fall-88 {
  77.987% {
    transform: translate(20.1587vw, 77.987vh) scale(0.0557);
  }
  to {
    transform: translate(20.9944vw, 100vh) scale(0.0557);
  }
}
.snow:nth-child(89) {
  opacity: 0.5242;
  transform: translate(64.1903vw, -10px) scale(0.941);
  animation: fall-89 23s -4s linear infinite;
}
@keyframes fall-89 {
  58.558% {
    transform: translate(69.8989vw, 58.558vh) scale(0.941);
  }
  to {
    transform: translate(67.0446vw, 100vh) scale(0.941);
  }
}
.snow:nth-child(90) {
  opacity: 0.6129;
  transform: translate(79.4844vw, -10px) scale(0.6661);
  animation: fall-90 22s -1s linear infinite;
}
@keyframes fall-90 {
  62.847% {
    transform: translate(79.2581vw, 62.847vh) scale(0.6661);
  }
  to {
    transform: translate(79.37125vw, 100vh) scale(0.6661);
  }
}
.snow:nth-child(91) {
  opacity: 0.1284;
  transform: translate(95.2727vw, -10px) scale(0.2407);
  animation: fall-91 17s -28s linear infinite;
}
@keyframes fall-91 {
  65.098% {
    transform: translate(88.4514vw, 65.098vh) scale(0.2407);
  }
  to {
    transform: translate(91.86205vw, 100vh) scale(0.2407);
  }
}
.snow:nth-child(92) {
  opacity: 0.0438;
  transform: translate(31.9537vw, -10px) scale(0.2236);
  animation: fall-92 12s -17s linear infinite;
}
@keyframes fall-92 {
  73.282% {
    transform: translate(23.2005vw, 73.282vh) scale(0.2236);
  }
  to {
    transform: translate(27.5771vw, 100vh) scale(0.2236);
  }
}
.snow:nth-child(93) {
  opacity: 0.564;
  transform: translate(8.8797vw, -10px) scale(0.4645);
  animation: fall-93 24s -10s linear infinite;
}
@keyframes fall-93 {
  74.326% {
    transform: translate(8.9744vw, 74.326vh) scale(0.4645);
  }
  to {
    transform: translate(8.92705vw, 100vh) scale(0.4645);
  }
}
.snow:nth-child(94) {
  opacity: 0.7235;
  transform: translate(4.909vw, -10px) scale(0.2626);
  animation: fall-94 24s -24s linear infinite;
}
@keyframes fall-94 {
  43.12% {
    transform: translate(-4.0562vw, 43.12vh) scale(0.2626);
  }
  to {
    transform: translate(0.4264vw, 100vh) scale(0.2626);
  }
}
.snow:nth-child(95) {
  opacity: 0.4588;
  transform: translate(42.558vw, -10px) scale(0.9777);
  animation: fall-95 26s -23s linear infinite;
}
@keyframes fall-95 {
  41.884% {
    transform: translate(48.0282vw, 41.884vh) scale(0.9777);
  }
  to {
    transform: translate(45.2931vw, 100vh) scale(0.9777);
  }
}
.snow:nth-child(96) {
  opacity: 0.2672;
  transform: translate(87.7216vw, -10px) scale(0.3773);
  animation: fall-96 30s -12s linear infinite;
}
@keyframes fall-96 {
  69.95% {
    transform: translate(89.3677vw, 69.95vh) scale(0.3773);
  }
  to {
    transform: translate(88.54465vw, 100vh) scale(0.3773);
  }
}
.snow:nth-child(97) {
  opacity: 0.1492;
  transform: translate(85.6708vw, -10px) scale(0.4067);
  animation: fall-97 20s -12s linear infinite;
}
@keyframes fall-97 {
  43.411% {
    transform: translate(81.7194vw, 43.411vh) scale(0.4067);
  }
  to {
    transform: translate(83.6951vw, 100vh) scale(0.4067);
  }
}
.snow:nth-child(98) {
  opacity: 0.7976;
  transform: translate(25.4714vw, -10px) scale(0.113);
  animation: fall-98 15s -26s linear infinite;
}
@keyframes fall-98 {
  53.183% {
    transform: translate(31.8978vw, 53.183vh) scale(0.113);
  }
  to {
    transform: translate(28.6846vw, 100vh) scale(0.113);
  }
}
.snow:nth-child(99) {
  opacity: 0.5305;
  transform: translate(20.5516vw, -10px) scale(0.193);
  animation: fall-99 15s -25s linear infinite;
}
@keyframes fall-99 {
  51.974% {
    transform: translate(25.022vw, 51.974vh) scale(0.193);
  }
  to {
    transform: translate(22.7868vw, 100vh) scale(0.193);
  }
}
.snow:nth-child(100) {
  opacity: 0.4441;
  transform: translate(4.1571vw, -10px) scale(0.6965);
  animation: fall-100 17s -26s linear infinite;
}
@keyframes fall-100 {
  58.69% {
    transform: translate(7.6348vw, 58.69vh) scale(0.6965);
  }
  to {
    transform: translate(5.89595vw, 100vh) scale(0.6965);
  }
}
.snow:nth-child(101) {
  opacity: 0.6697;
  transform: translate(67.0897vw, -10px) scale(0.4326);
  animation: fall-101 23s -24s linear infinite;
}
@keyframes fall-101 {
  54.895% {
    transform: translate(73.5064vw, 54.895vh) scale(0.4326);
  }
  to {
    transform: translate(70.29805vw, 100vh) scale(0.4326);
  }
}
.snow:nth-child(102) {
  opacity: 0.8115;
  transform: translate(11.3764vw, -10px) scale(0.5794);
  animation: fall-102 16s -12s linear infinite;
}
@keyframes fall-102 {
  56.112% {
    transform: translate(11.9787vw, 56.112vh) scale(0.5794);
  }
  to {
    transform: translate(11.67755vw, 100vh) scale(0.5794);
  }
}
.snow:nth-child(103) {
  opacity: 0.5338;
  transform: translate(66.9196vw, -10px) scale(0.7038);
  animation: fall-103 20s -6s linear infinite;
}
@keyframes fall-103 {
  41.053% {
    transform: translate(67.7348vw, 41.053vh) scale(0.7038);
  }
  to {
    transform: translate(67.3272vw, 100vh) scale(0.7038);
  }
}
.snow:nth-child(104) {
  opacity: 0.771;
  transform: translate(54.2254vw, -10px) scale(0.7538);
  animation: fall-104 15s -3s linear infinite;
}
@keyframes fall-104 {
  56.646% {
    transform: translate(45.1228vw, 56.646vh) scale(0.7538);
  }
  to {
    transform: translate(49.6741vw, 100vh) scale(0.7538);
  }
}
.snow:nth-child(105) {
  opacity: 0.6382;
  transform: translate(47.939vw, -10px) scale(0.5278);
  animation: fall-105 21s -26s linear infinite;
}
@keyframes fall-105 {
  50.814% {
    transform: translate(48.7831vw, 50.814vh) scale(0.5278);
  }
  to {
    transform: translate(48.36105vw, 100vh) scale(0.5278);
  }
}
.snow:nth-child(106) {
  opacity: 0.151;
  transform: translate(40.048vw, -10px) scale(0.724);
  animation: fall-106 26s -11s linear infinite;
}
@keyframes fall-106 {
  76.614% {
    transform: translate(43.6382vw, 76.614vh) scale(0.724);
  }
  to {
    transform: translate(41.8431vw, 100vh) scale(0.724);
  }
}
.snow:nth-child(107) {
  opacity: 0.5829;
  transform: translate(67.6258vw, -10px) scale(0.5344);
  animation: fall-107 25s -17s linear infinite;
}
@keyframes fall-107 {
  53.644% {
    transform: translate(64.6368vw, 53.644vh) scale(0.5344);
  }
  to {
    transform: translate(66.1313vw, 100vh) scale(0.5344);
  }
}
.snow:nth-child(108) {
  opacity: 0.4297;
  transform: translate(14.6629vw, -10px) scale(0.822);
  animation: fall-108 19s -4s linear infinite;
}
@keyframes fall-108 {
  37.365% {
    transform: translate(19.221vw, 37.365vh) scale(0.822);
  }
  to {
    transform: translate(16.94195vw, 100vh) scale(0.822);
  }
}
.snow:nth-child(109) {
  opacity: 0.357;
  transform: translate(49.0924vw, -10px) scale(0.057);
  animation: fall-109 19s -6s linear infinite;
}
@keyframes fall-109 {
  54.207% {
    transform: translate(43.4225vw, 54.207vh) scale(0.057);
  }
  to {
    transform: translate(46.25745vw, 100vh) scale(0.057);
  }
}
.snow:nth-child(110) {
  opacity: 0.3871;
  transform: translate(35.0046vw, -10px) scale(0.4851);
  animation: fall-110 30s -16s linear infinite;
}
@keyframes fall-110 {
  45.3% {
    transform: translate(28.4341vw, 45.3vh) scale(0.4851);
  }
  to {
    transform: translate(31.71935vw, 100vh) scale(0.4851);
  }
}
.snow:nth-child(111) {
  opacity: 0.3036;
  transform: translate(97.8114vw, -10px) scale(0.7102);
  animation: fall-111 21s -10s linear infinite;
}
@keyframes fall-111 {
  42.507% {
    transform: translate(88.3604vw, 42.507vh) scale(0.7102);
  }
  to {
    transform: translate(93.0859vw, 100vh) scale(0.7102);
  }
}
.snow:nth-child(112) {
  opacity: 0.2654;
  transform: translate(66.2958vw, -10px) scale(0.4678);
  animation: fall-112 24s -19s linear infinite;
}
@keyframes fall-112 {
  79.848% {
    transform: translate(64.9865vw, 79.848vh) scale(0.4678);
  }
  to {
    transform: translate(65.64115vw, 100vh) scale(0.4678);
  }
}
.snow:nth-child(113) {
  opacity: 0.2178;
  transform: translate(4.805vw, -10px) scale(0.7714);
  animation: fall-113 19s -24s linear infinite;
}
@keyframes fall-113 {
  53.334% {
    transform: translate(-0.0698vw, 53.334vh) scale(0.7714);
  }
  to {
    transform: translate(2.3676vw, 100vh) scale(0.7714);
  }
}
.snow:nth-child(114) {
  opacity: 0.3797;
  transform: translate(17.1869vw, -10px) scale(0.6533);
  animation: fall-114 30s -8s linear infinite;
}
@keyframes fall-114 {
  53.408% {
    transform: translate(19.8418vw, 53.408vh) scale(0.6533);
  }
  to {
    transform: translate(18.51435vw, 100vh) scale(0.6533);
  }
}
.snow:nth-child(115) {
  opacity: 0.6309;
  transform: translate(79.5641vw, -10px) scale(0.8978);
  animation: fall-115 19s -17s linear infinite;
}
@keyframes fall-115 {
  40.28% {
    transform: translate(84.1319vw, 40.28vh) scale(0.8978);
  }
  to {
    transform: translate(81.848vw, 100vh) scale(0.8978);
  }
}
.snow:nth-child(116) {
  opacity: 0.6517;
  transform: translate(89.2446vw, -10px) scale(0.3376);
  animation: fall-116 22s -12s linear infinite;
}
@keyframes fall-116 {
  73.83% {
    transform: translate(91.5159vw, 73.83vh) scale(0.3376);
  }
  to {
    transform: translate(90.38025vw, 100vh) scale(0.3376);
  }
}
.snow:nth-child(117) {
  opacity: 0.9031;
  transform: translate(35.2359vw, -10px) scale(0.8007);
  animation: fall-117 15s -22s linear infinite;
}
@keyframes fall-117 {
  41.217% {
    transform: translate(42.6343vw, 41.217vh) scale(0.8007);
  }
  to {
    transform: translate(38.9351vw, 100vh) scale(0.8007);
  }
}
.snow:nth-child(118) {
  opacity: 0.5575;
  transform: translate(73.4123vw, -10px) scale(0.421);
  animation: fall-118 14s -14s linear infinite;
}
@keyframes fall-118 {
  73.501% {
    transform: translate(68.5219vw, 73.501vh) scale(0.421);
  }
  to {
    transform: translate(70.9671vw, 100vh) scale(0.421);
  }
}
.snow:nth-child(119) {
  opacity: 0.8172;
  transform: translate(35.9696vw, -10px) scale(0.3025);
  animation: fall-119 28s -9s linear infinite;
}
@keyframes fall-119 {
  75.082% {
    transform: translate(39.6959vw, 75.082vh) scale(0.3025);
  }
  to {
    transform: translate(37.83275vw, 100vh) scale(0.3025);
  }
}
.snow:nth-child(120) {
  opacity: 0.871;
  transform: translate(32.4504vw, -10px) scale(0.7091);
  animation: fall-120 19s -8s linear infinite;
}
@keyframes fall-120 {
  76.385% {
    transform: translate(23.7349vw, 76.385vh) scale(0.7091);
  }
  to {
    transform: translate(28.09265vw, 100vh) scale(0.7091);
  }
}
.snow:nth-child(121) {
  opacity: 0.9833;
  transform: translate(41.0254vw, -10px) scale(0.2958);
  animation: fall-121 12s -16s linear infinite;
}
@keyframes fall-121 {
  69.78% {
    transform: translate(49.023vw, 69.78vh) scale(0.2958);
  }
  to {
    transform: translate(45.0242vw, 100vh) scale(0.2958);
  }
}
.snow:nth-child(122) {
  opacity: 0.1026;
  transform: translate(99.7424vw, -10px) scale(0.215);
  animation: fall-122 13s -28s linear infinite;
}
@keyframes fall-122 {
  43.193% {
    transform: translate(89.7627vw, 43.193vh) scale(0.215);
  }
  to {
    transform: translate(94.75255vw, 100vh) scale(0.215);
  }
}
.snow:nth-child(123) {
  opacity: 0.4118;
  transform: translate(46.9352vw, -10px) scale(0.5605);
  animation: fall-123 11s -25s linear infinite;
}
@keyframes fall-123 {
  41.597% {
    transform: translate(43.5454vw, 41.597vh) scale(0.5605);
  }
  to {
    transform: translate(45.2403vw, 100vh) scale(0.5605);
  }
}
.snow:nth-child(124) {
  opacity: 0.2961;
  transform: translate(82.9796vw, -10px) scale(0.0807);
  animation: fall-124 20s -12s linear infinite;
}
@keyframes fall-124 {
  56.236% {
    transform: translate(90.0423vw, 56.236vh) scale(0.0807);
  }
  to {
    transform: translate(86.51095vw, 100vh) scale(0.0807);
  }
}
.snow:nth-child(125) {
  opacity: 0.9213;
  transform: translate(4.3374vw, -10px) scale(0.8212);
  animation: fall-125 11s -30s linear infinite;
}
@keyframes fall-125 {
  57.956% {
    transform: translate(-4.8411vw, 57.956vh) scale(0.8212);
  }
  to {
    transform: translate(-0.25185vw, 100vh) scale(0.8212);
  }
}
.snow:nth-child(126) {
  opacity: 0.2291;
  transform: translate(26.0965vw, -10px) scale(0.2297);
  animation: fall-126 30s -15s linear infinite;
}
@keyframes fall-126 {
  66.321% {
    transform: translate(29.5071vw, 66.321vh) scale(0.2297);
  }
  to {
    transform: translate(27.8018vw, 100vh) scale(0.2297);
  }
}
.snow:nth-child(127) {
  opacity: 0.4033;
  transform: translate(60.6691vw, -10px) scale(0.8033);
  animation: fall-127 19s -8s linear infinite;
}
@keyframes fall-127 {
  78.625% {
    transform: translate(56.2521vw, 78.625vh) scale(0.8033);
  }
  to {
    transform: translate(58.4606vw, 100vh) scale(0.8033);
  }
}
.snow:nth-child(128) {
  opacity: 0.0591;
  transform: translate(6.1498vw, -10px) scale(0.2593);
  animation: fall-128 19s -3s linear infinite;
}
@keyframes fall-128 {
  44.83% {
    transform: translate(2.9595vw, 44.83vh) scale(0.2593);
  }
  to {
    transform: translate(4.55465vw, 100vh) scale(0.2593);
  }
}
.snow:nth-child(129) {
  opacity: 0.7262;
  transform: translate(39.8886vw, -10px) scale(0.2139);
  animation: fall-129 30s -17s linear infinite;
}
@keyframes fall-129 {
  74.35% {
    transform: translate(46.7817vw, 74.35vh) scale(0.2139);
  }
  to {
    transform: translate(43.33515vw, 100vh) scale(0.2139);
  }
}
.snow:nth-child(130) {
  opacity: 0.4415;
  transform: translate(86.8804vw, -10px) scale(0.9082);
  animation: fall-130 18s -17s linear infinite;
}
@keyframes fall-130 {
  54.8% {
    transform: translate(82.3409vw, 54.8vh) scale(0.9082);
  }
  to {
    transform: translate(84.61065vw, 100vh) scale(0.9082);
  }
}
.snow:nth-child(131) {
  opacity: 0.5346;
  transform: translate(25.9946vw, -10px) scale(0.8538);
  animation: fall-131 13s -6s linear infinite;
}
@keyframes fall-131 {
  68.29% {
    transform: translate(17.2936vw, 68.29vh) scale(0.8538);
  }
  to {
    transform: translate(21.6441vw, 100vh) scale(0.8538);
  }
}
.snow:nth-child(132) {
  opacity: 0.3316;
  transform: translate(25.9087vw, -10px) scale(0.2365);
  animation: fall-132 15s -21s linear infinite;
}
@keyframes fall-132 {
  43.918% {
    transform: translate(29.8216vw, 43.918vh) scale(0.2365);
  }
  to {
    transform: translate(27.86515vw, 100vh) scale(0.2365);
  }
}
.snow:nth-child(133) {
  opacity: 0.3924;
  transform: translate(51.5435vw, -10px) scale(0.9387);
  animation: fall-133 15s -28s linear infinite;
}
@keyframes fall-133 {
  74.542% {
    transform: translate(53.2169vw, 74.542vh) scale(0.9387);
  }
  to {
    transform: translate(52.3802vw, 100vh) scale(0.9387);
  }
}
.snow:nth-child(134) {
  opacity: 0.3121;
  transform: translate(58.8773vw, -10px) scale(0.3962);
  animation: fall-134 15s -23s linear infinite;
}
@keyframes fall-134 {
  41.178% {
    transform: translate(51.413vw, 41.178vh) scale(0.3962);
  }
  to {
    transform: translate(55.14515vw, 100vh) scale(0.3962);
  }
}
.snow:nth-child(135) {
  opacity: 0.92;
  transform: translate(40.4996vw, -10px) scale(0.1564);
  animation: fall-135 10s -28s linear infinite;
}
@keyframes fall-135 {
  58.609% {
    transform: translate(37.6456vw, 58.609vh) scale(0.1564);
  }
  to {
    transform: translate(39.0726vw, 100vh) scale(0.1564);
  }
}
.snow:nth-child(136) {
  opacity: 0.2902;
  transform: translate(48.763vw, -10px) scale(0.9362);
  animation: fall-136 23s -20s linear infinite;
}
@keyframes fall-136 {
  60.44% {
    transform: translate(42.5445vw, 60.44vh) scale(0.9362);
  }
  to {
    transform: translate(45.65375vw, 100vh) scale(0.9362);
  }
}
.snow:nth-child(137) {
  opacity: 0.7108;
  transform: translate(39.7066vw, -10px) scale(0.7514);
  animation: fall-137 14s -28s linear infinite;
}
@keyframes fall-137 {
  79.013% {
    transform: translate(37.9621vw, 79.013vh) scale(0.7514);
  }
  to {
    transform: translate(38.83435vw, 100vh) scale(0.7514);
  }
}
.snow:nth-child(138) {
  opacity: 0.674;
  transform: translate(64.5579vw, -10px) scale(0.3037);
  animation: fall-138 24s -27s linear infinite;
}
@keyframes fall-138 {
  50.32% {
    transform: translate(71.4965vw, 50.32vh) scale(0.3037);
  }
  to {
    transform: translate(68.0272vw, 100vh) scale(0.3037);
  }
}
.snow:nth-child(139) {
  opacity: 0.2448;
  transform: translate(88.048vw, -10px) scale(0.262);
  animation: fall-139 25s -27s linear infinite;
}
@keyframes fall-139 {
  60.156% {
    transform: translate(85.5161vw, 60.156vh) scale(0.262);
  }
  to {
    transform: translate(86.78205vw, 100vh) scale(0.262);
  }
}
.snow:nth-child(140) {
  opacity: 0.5928;
  transform: translate(44.5084vw, -10px) scale(0.299);
  animation: fall-140 12s -26s linear infinite;
}
@keyframes fall-140 {
  38.796% {
    transform: translate(50.9941vw, 38.796vh) scale(0.299);
  }
  to {
    transform: translate(47.75125vw, 100vh) scale(0.299);
  }
}
.snow:nth-child(141) {
  opacity: 0.163;
  transform: translate(32.6928vw, -10px) scale(0.1638);
  animation: fall-141 19s -30s linear infinite;
}
@keyframes fall-141 {
  40.258% {
    transform: translate(31.9441vw, 40.258vh) scale(0.1638);
  }
  to {
    transform: translate(32.31845vw, 100vh) scale(0.1638);
  }
}
.snow:nth-child(142) {
  opacity: 0.7317;
  transform: translate(57.4161vw, -10px) scale(0.0985);
  animation: fall-142 13s -2s linear infinite;
}
@keyframes fall-142 {
  79.99% {
    transform: translate(62.157vw, 79.99vh) scale(0.0985);
  }
  to {
    transform: translate(59.78655vw, 100vh) scale(0.0985);
  }
}
.snow:nth-child(143) {
  opacity: 0.3065;
  transform: translate(40.274vw, -10px) scale(0.1091);
  animation: fall-143 18s -30s linear infinite;
}
@keyframes fall-143 {
  33.274% {
    transform: translate(44.3681vw, 33.274vh) scale(0.1091);
  }
  to {
    transform: translate(42.32105vw, 100vh) scale(0.1091);
  }
}
.snow:nth-child(144) {
  opacity: 0.9309;
  transform: translate(50.5416vw, -10px) scale(0.654);
  animation: fall-144 17s -1s linear infinite;
}
@keyframes fall-144 {
  48.904% {
    transform: translate(59.2088vw, 48.904vh) scale(0.654);
  }
  to {
    transform: translate(54.8752vw, 100vh) scale(0.654);
  }
}
.snow:nth-child(145) {
  opacity: 0.1924;
  transform: translate(82.1765vw, -10px) scale(0.2085);
  animation: fall-145 14s -6s linear infinite;
}
@keyframes fall-145 {
  37.513% {
    transform: translate(89.6045vw, 37.513vh) scale(0.2085);
  }
  to {
    transform: translate(85.8905vw, 100vh) scale(0.2085);
  }
}
.snow:nth-child(146) {
  opacity: 0.8071;
  transform: translate(52.3225vw, -10px) scale(0.6816);
  animation: fall-146 24s -1s linear infinite;
}
@keyframes fall-146 {
  64.682% {
    transform: translate(44.5454vw, 64.682vh) scale(0.6816);
  }
  to {
    transform: translate(48.43395vw, 100vh) scale(0.6816);
  }
}
.snow:nth-child(147) {
  opacity: 0.8503;
  transform: translate(21.6992vw, -10px) scale(0.5873);
  animation: fall-147 26s -15s linear infinite;
}
@keyframes fall-147 {
  72.179% {
    transform: translate(22.9894vw, 72.179vh) scale(0.5873);
  }
  to {
    transform: translate(22.3443vw, 100vh) scale(0.5873);
  }
}
.snow:nth-child(148) {
  opacity: 0.2699;
  transform: translate(33.3844vw, -10px) scale(0.2603);
  animation: fall-148 17s -11s linear infinite;
}
@keyframes fall-148 {
  65.915% {
    transform: translate(26.2634vw, 65.915vh) scale(0.2603);
  }
  to {
    transform: translate(29.8239vw, 100vh) scale(0.2603);
  }
}
.snow:nth-child(149) {
  opacity: 0.7362;
  transform: translate(48.4753vw, -10px) scale(0.5225);
  animation: fall-149 11s -3s linear infinite;
}
@keyframes fall-149 {
  71.371% {
    transform: translate(49.3505vw, 71.371vh) scale(0.5225);
  }
  to {
    transform: translate(48.9129vw, 100vh) scale(0.5225);
  }
}
.snow:nth-child(150) {
  opacity: 0.3913;
  transform: translate(71.6657vw, -10px) scale(0.4752);
  animation: fall-150 21s -22s linear infinite;
}
@keyframes fall-150 {
  63.969% {
    transform: translate(75.5597vw, 63.969vh) scale(0.4752);
  }
  to {
    transform: translate(73.6127vw, 100vh) scale(0.4752);
  }
}
.snow:nth-child(151) {
  opacity: 0.9508;
  transform: translate(31.2543vw, -10px) scale(0.1539);
  animation: fall-151 16s -13s linear infinite;
}
@keyframes fall-151 {
  49.947% {
    transform: translate(33.8727vw, 49.947vh) scale(0.1539);
  }
  to {
    transform: translate(32.5635vw, 100vh) scale(0.1539);
  }
}
.snow:nth-child(152) {
  opacity: 0.1802;
  transform: translate(68.9227vw, -10px) scale(0.5357);
  animation: fall-152 30s -26s linear infinite;
}
@keyframes fall-152 {
  42.987% {
    transform: translate(65.7493vw, 42.987vh) scale(0.5357);
  }
  to {
    transform: translate(67.336vw, 100vh) scale(0.5357);
  }
}
.snow:nth-child(153) {
  opacity: 0.7918;
  transform: translate(73.6419vw, -10px) scale(0.2655);
  animation: fall-153 29s -16s linear infinite;
}
@keyframes fall-153 {
  74.746% {
    transform: translate(72.3724vw, 74.746vh) scale(0.2655);
  }
  to {
    transform: translate(73.00715vw, 100vh) scale(0.2655);
  }
}
.snow:nth-child(154) {
  opacity: 0.2315;
  transform: translate(78.4049vw, -10px) scale(0.43);
  animation: fall-154 16s -1s linear infinite;
}
@keyframes fall-154 {
  70.958% {
    transform: translate(69.9433vw, 70.958vh) scale(0.43);
  }
  to {
    transform: translate(74.1741vw, 100vh) scale(0.43);
  }
}
.snow:nth-child(155) {
  opacity: 0.6063;
  transform: translate(69.2546vw, -10px) scale(0.9286);
  animation: fall-155 15s -26s linear infinite;
}
@keyframes fall-155 {
  38.831% {
    transform: translate(78.9504vw, 38.831vh) scale(0.9286);
  }
  to {
    transform: translate(74.1025vw, 100vh) scale(0.9286);
  }
}
.snow:nth-child(156) {
  opacity: 0.5348;
  transform: translate(9.2265vw, -10px) scale(0.6708);
  animation: fall-156 21s -18s linear infinite;
}
@keyframes fall-156 {
  47.633% {
    transform: translate(0.3359vw, 47.633vh) scale(0.6708);
  }
  to {
    transform: translate(4.7812vw, 100vh) scale(0.6708);
  }
}
.snow:nth-child(157) {
  opacity: 0.508;
  transform: translate(81.6834vw, -10px) scale(0.708);
  animation: fall-157 28s -4s linear infinite;
}
@keyframes fall-157 {
  31.971% {
    transform: translate(74.1369vw, 31.971vh) scale(0.708);
  }
  to {
    transform: translate(77.91015vw, 100vh) scale(0.708);
  }
}
.snow:nth-child(158) {
  opacity: 0.7795;
  transform: translate(85.4628vw, -10px) scale(0.8182);
  animation: fall-158 23s -22s linear infinite;
}
@keyframes fall-158 {
  56.874% {
    transform: translate(76.126vw, 56.874vh) scale(0.8182);
  }
  to {
    transform: translate(80.7944vw, 100vh) scale(0.8182);
  }
}
.snow:nth-child(159) {
  opacity: 0.5847;
  transform: translate(59.0365vw, -10px) scale(0.511);
  animation: fall-159 25s -5s linear infinite;
}
@keyframes fall-159 {
  49.009% {
    transform: translate(61.2862vw, 49.009vh) scale(0.511);
  }
  to {
    transform: translate(60.16135vw, 100vh) scale(0.511);
  }
}
.snow:nth-child(160) {
  opacity: 0.1925;
  transform: translate(50.2625vw, -10px) scale(0.3517);
  animation: fall-160 19s -15s linear infinite;
}
@keyframes fall-160 {
  69.005% {
    transform: translate(57.4226vw, 69.005vh) scale(0.3517);
  }
  to {
    transform: translate(53.84255vw, 100vh) scale(0.3517);
  }
}
.snow:nth-child(161) {
  opacity: 0.8959;
  transform: translate(25.7516vw, -10px) scale(0.8033);
  animation: fall-161 16s -13s linear infinite;
}
@keyframes fall-161 {
  32.212% {
    transform: translate(27.4804vw, 32.212vh) scale(0.8033);
  }
  to {
    transform: translate(26.616vw, 100vh) scale(0.8033);
  }
}
.snow:nth-child(162) {
  opacity: 0.9696;
  transform: translate(17.7147vw, -10px) scale(0.9133);
  animation: fall-162 18s -3s linear infinite;
}
@keyframes fall-162 {
  70.958% {
    transform: translate(22.8493vw, 70.958vh) scale(0.9133);
  }
  to {
    transform: translate(20.282vw, 100vh) scale(0.9133);
  }
}
.snow:nth-child(163) {
  opacity: 0.664;
  transform: translate(71.1954vw, -10px) scale(0.4984);
  animation: fall-163 12s -30s linear infinite;
}
@keyframes fall-163 {
  31.453% {
    transform: translate(69.9387vw, 31.453vh) scale(0.4984);
  }
  to {
    transform: translate(70.56705vw, 100vh) scale(0.4984);
  }
}
.snow:nth-child(164) {
  opacity: 0.88;
  transform: translate(62.1908vw, -10px) scale(0.0725);
  animation: fall-164 15s -21s linear infinite;
}
@keyframes fall-164 {
  37.496% {
    transform: translate(67.5441vw, 37.496vh) scale(0.0725);
  }
  to {
    transform: translate(64.86745vw, 100vh) scale(0.0725);
  }
}
.snow:nth-child(165) {
  opacity: 0.0959;
  transform: translate(73.5208vw, -10px) scale(0.0759);
  animation: fall-165 20s -13s linear infinite;
}
@keyframes fall-165 {
  66.847% {
    transform: translate(65.2867vw, 66.847vh) scale(0.0759);
  }
  to {
    transform: translate(69.40375vw, 100vh) scale(0.0759);
  }
}
.snow:nth-child(166) {
  opacity: 0.3601;
  transform: translate(20.422vw, -10px) scale(0.4543);
  animation: fall-166 29s -27s linear infinite;
}
@keyframes fall-166 {
  74.709% {
    transform: translate(14.6953vw, 74.709vh) scale(0.4543);
  }
  to {
    transform: translate(17.55865vw, 100vh) scale(0.4543);
  }
}
.snow:nth-child(167) {
  opacity: 0.0142;
  transform: translate(67.4621vw, -10px) scale(0.758);
  animation: fall-167 10s -24s linear infinite;
}
@keyframes fall-167 {
  67.787% {
    transform: translate(75.6934vw, 67.787vh) scale(0.758);
  }
  to {
    transform: translate(71.57775vw, 100vh) scale(0.758);
  }
}
.snow:nth-child(168) {
  opacity: 0.2976;
  transform: translate(13.1177vw, -10px) scale(0.1349);
  animation: fall-168 26s -10s linear infinite;
}
@keyframes fall-168 {
  54.695% {
    transform: translate(19.0619vw, 54.695vh) scale(0.1349);
  }
  to {
    transform: translate(16.0898vw, 100vh) scale(0.1349);
  }
}
.snow:nth-child(169) {
  opacity: 0.543;
  transform: translate(0.8574vw, -10px) scale(0.9044);
  animation: fall-169 20s -24s linear infinite;
}
@keyframes fall-169 {
  65.579% {
    transform: translate(-3.0544vw, 65.579vh) scale(0.9044);
  }
  to {
    transform: translate(-1.0985vw, 100vh) scale(0.9044);
  }
}
.snow:nth-child(170) {
  opacity: 0.1764;
  transform: translate(6.8856vw, -10px) scale(0.2276);
  animation: fall-170 10s -1s linear infinite;
}
@keyframes fall-170 {
  51.402% {
    transform: translate(16.3677vw, 51.402vh) scale(0.2276);
  }
  to {
    transform: translate(11.62665vw, 100vh) scale(0.2276);
  }
}
.snow:nth-child(171) {
  opacity: 0.7818;
  transform: translate(45.0669vw, -10px) scale(0.8898);
  animation: fall-171 29s -6s linear infinite;
}
@keyframes fall-171 {
  74.276% {
    transform: translate(51.2425vw, 74.276vh) scale(0.8898);
  }
  to {
    transform: translate(48.1547vw, 100vh) scale(0.8898);
  }
}
.snow:nth-child(172) {
  opacity: 0.9237;
  transform: translate(93.3886vw, -10px) scale(0.739);
  animation: fall-172 22s -24s linear infinite;
}
@keyframes fall-172 {
  47.403% {
    transform: translate(101.3674vw, 47.403vh) scale(0.739);
  }
  to {
    transform: translate(97.378vw, 100vh) scale(0.739);
  }
}
.snow:nth-child(173) {
  opacity: 0.2433;
  transform: translate(95.7108vw, -10px) scale(0.5437);
  animation: fall-173 25s -7s linear infinite;
}
@keyframes fall-173 {
  38.839% {
    transform: translate(105.0361vw, 38.839vh) scale(0.5437);
  }
  to {
    transform: translate(100.37345vw, 100vh) scale(0.5437);
  }
}
.snow:nth-child(174) {
  opacity: 0.1276;
  transform: translate(62.4172vw, -10px) scale(0.1739);
  animation: fall-174 29s -12s linear infinite;
}
@keyframes fall-174 {
  35.287% {
    transform: translate(60.8996vw, 35.287vh) scale(0.1739);
  }
  to {
    transform: translate(61.6584vw, 100vh) scale(0.1739);
  }
}
.snow:nth-child(175) {
  opacity: 0.5968;
  transform: translate(51.3295vw, -10px) scale(0.0351);
  animation: fall-175 23s -4s linear infinite;
}
@keyframes fall-175 {
  61.319% {
    transform: translate(43.0964vw, 61.319vh) scale(0.0351);
  }
  to {
    transform: translate(47.21295vw, 100vh) scale(0.0351);
  }
}
.snow:nth-child(176) {
  opacity: 0.3002;
  transform: translate(72.2093vw, -10px) scale(0.2511);
  animation: fall-176 24s -17s linear infinite;
}
@keyframes fall-176 {
  51.764% {
    transform: translate(66.9992vw, 51.764vh) scale(0.2511);
  }
  to {
    transform: translate(69.60425vw, 100vh) scale(0.2511);
  }
}
.snow:nth-child(177) {
  opacity: 0.7376;
  transform: translate(51.5103vw, -10px) scale(0.9299);
  animation: fall-177 18s -12s linear infinite;
}
@keyframes fall-177 {
  31.742% {
    transform: translate(45.0339vw, 31.742vh) scale(0.9299);
  }
  to {
    transform: translate(48.2721vw, 100vh) scale(0.9299);
  }
}
.snow:nth-child(178) {
  opacity: 0.7483;
  transform: translate(17.8242vw, -10px) scale(0.1762);
  animation: fall-178 12s -28s linear infinite;
}
@keyframes fall-178 {
  32.979% {
    transform: translate(8.0831vw, 32.979vh) scale(0.1762);
  }
  to {
    transform: translate(12.95365vw, 100vh) scale(0.1762);
  }
}
.snow:nth-child(179) {
  opacity: 0.7688;
  transform: translate(53.1838vw, -10px) scale(0.7277);
  animation: fall-179 25s -6s linear infinite;
}
@keyframes fall-179 {
  63.326% {
    transform: translate(45.8532vw, 63.326vh) scale(0.7277);
  }
  to {
    transform: translate(49.5185vw, 100vh) scale(0.7277);
  }
}
.snow:nth-child(180) {
  opacity: 0.2227;
  transform: translate(1.3963vw, -10px) scale(0.5933);
  animation: fall-180 19s -29s linear infinite;
}
@keyframes fall-180 {
  33.7% {
    transform: translate(-6.3603vw, 33.7vh) scale(0.5933);
  }
  to {
    transform: translate(-2.482vw, 100vh) scale(0.5933);
  }
}
.snow:nth-child(181) {
  opacity: 0.4623;
  transform: translate(49.5146vw, -10px) scale(0.3127);
  animation: fall-181 10s -25s linear infinite;
}
@keyframes fall-181 {
  61.043% {
    transform: translate(43.335vw, 61.043vh) scale(0.3127);
  }
  to {
    transform: translate(46.4248vw, 100vh) scale(0.3127);
  }
}
.snow:nth-child(182) {
  opacity: 0.2772;
  transform: translate(49.921vw, -10px) scale(0.3823);
  animation: fall-182 24s -13s linear infinite;
}
@keyframes fall-182 {
  43.247% {
    transform: translate(39.9888vw, 43.247vh) scale(0.3823);
  }
  to {
    transform: translate(44.9549vw, 100vh) scale(0.3823);
  }
}
.snow:nth-child(183) {
  opacity: 0.2114;
  transform: translate(1.2316vw, -10px) scale(0.6601);
  animation: fall-183 25s -7s linear infinite;
}
@keyframes fall-183 {
  75.521% {
    transform: translate(-1.796vw, 75.521vh) scale(0.6601);
  }
  to {
    transform: translate(-0.2822vw, 100vh) scale(0.6601);
  }
}
.snow:nth-child(184) {
  opacity: 0.0037;
  transform: translate(89.1697vw, -10px) scale(0.0572);
  animation: fall-184 16s -10s linear infinite;
}
@keyframes fall-184 {
  61.39% {
    transform: translate(85.9329vw, 61.39vh) scale(0.0572);
  }
  to {
    transform: translate(87.5513vw, 100vh) scale(0.0572);
  }
}
.snow:nth-child(185) {
  opacity: 0.0475;
  transform: translate(14.7973vw, -10px) scale(0.5909);
  animation: fall-185 18s -25s linear infinite;
}
@keyframes fall-185 {
  79.805% {
    transform: translate(16.4078vw, 79.805vh) scale(0.5909);
  }
  to {
    transform: translate(15.60255vw, 100vh) scale(0.5909);
  }
}
.snow:nth-child(186) {
  opacity: 0.9877;
  transform: translate(48.3167vw, -10px) scale(0.8992);
  animation: fall-186 26s -17s linear infinite;
}
@keyframes fall-186 {
  50.22% {
    transform: translate(48.6304vw, 50.22vh) scale(0.8992);
  }
  to {
    transform: translate(48.47355vw, 100vh) scale(0.8992);
  }
}
.snow:nth-child(187) {
  opacity: 0.8018;
  transform: translate(42.5297vw, -10px) scale(0.7916);
  animation: fall-187 13s -15s linear infinite;
}
@keyframes fall-187 {
  49.598% {
    transform: translate(35.0427vw, 49.598vh) scale(0.7916);
  }
  to {
    transform: translate(38.7862vw, 100vh) scale(0.7916);
  }
}
.snow:nth-child(188) {
  opacity: 0.3294;
  transform: translate(25.7215vw, -10px) scale(0.4979);
  animation: fall-188 10s -20s linear infinite;
}
@keyframes fall-188 {
  77.517% {
    transform: translate(25.1144vw, 77.517vh) scale(0.4979);
  }
  to {
    transform: translate(25.41795vw, 100vh) scale(0.4979);
  }
}
.snow:nth-child(189) {
  opacity: 0.5299;
  transform: translate(70.6118vw, -10px) scale(0.9174);
  animation: fall-189 20s -27s linear infinite;
}
@keyframes fall-189 {
  54.837% {
    transform: translate(72.0653vw, 54.837vh) scale(0.9174);
  }
  to {
    transform: translate(71.33855vw, 100vh) scale(0.9174);
  }
}
.snow:nth-child(190) {
  opacity: 0.9526;
  transform: translate(31.2856vw, -10px) scale(0.4456);
  animation: fall-190 18s -29s linear infinite;
}
@keyframes fall-190 {
  54.516% {
    transform: translate(33.3823vw, 54.516vh) scale(0.4456);
  }
  to {
    transform: translate(32.33395vw, 100vh) scale(0.4456);
  }
}
.snow:nth-child(191) {
  opacity: 0.9824;
  transform: translate(45.2311vw, -10px) scale(0.8467);
  animation: fall-191 22s -13s linear infinite;
}
@keyframes fall-191 {
  72.496% {
    transform: translate(38.8445vw, 72.496vh) scale(0.8467);
  }
  to {
    transform: translate(42.0378vw, 100vh) scale(0.8467);
  }
}
.snow:nth-child(192) {
  opacity: 0.2831;
  transform: translate(31.7619vw, -10px) scale(0.5822);
  animation: fall-192 27s -26s linear infinite;
}
@keyframes fall-192 {
  66.543% {
    transform: translate(40.7407vw, 66.543vh) scale(0.5822);
  }
  to {
    transform: translate(36.2513vw, 100vh) scale(0.5822);
  }
}
.snow:nth-child(193) {
  opacity: 0.3186;
  transform: translate(76.1681vw, -10px) scale(0.2664);
  animation: fall-193 14s -7s linear infinite;
}
@keyframes fall-193 {
  34.087% {
    transform: translate(69.9566vw, 34.087vh) scale(0.2664);
  }
  to {
    transform: translate(73.06235vw, 100vh) scale(0.2664);
  }
}
.snow:nth-child(194) {
  opacity: 0.4471;
  transform: translate(58.9717vw, -10px) scale(0.3093);
  animation: fall-194 29s -25s linear infinite;
}
@keyframes fall-194 {
  56.646% {
    transform: translate(53.8422vw, 56.646vh) scale(0.3093);
  }
  to {
    transform: translate(56.40695vw, 100vh) scale(0.3093);
  }
}
.snow:nth-child(195) {
  opacity: 0.9567;
  transform: translate(84.1379vw, -10px) scale(0.7654);
  animation: fall-195 29s -11s linear infinite;
}
@keyframes fall-195 {
  30.849% {
    transform: translate(78.7731vw, 30.849vh) scale(0.7654);
  }
  to {
    transform: translate(81.4555vw, 100vh) scale(0.7654);
  }
}
.snow:nth-child(196) {
  opacity: 0.6271;
  transform: translate(53.4937vw, -10px) scale(0.885);
  animation: fall-196 19s -7s linear infinite;
}
@keyframes fall-196 {
  72.243% {
    transform: translate(49.1056vw, 72.243vh) scale(0.885);
  }
  to {
    transform: translate(51.29965vw, 100vh) scale(0.885);
  }
}
.snow:nth-child(197) {
  opacity: 0.7809;
  transform: translate(57.9952vw, -10px) scale(0.4067);
  animation: fall-197 27s -28s linear infinite;
}
@keyframes fall-197 {
  78.738% {
    transform: translate(52.6716vw, 78.738vh) scale(0.4067);
  }
  to {
    transform: translate(55.3334vw, 100vh) scale(0.4067);
  }
}
.snow:nth-child(198) {
  opacity: 0.7571;
  transform: translate(98.4856vw, -10px) scale(0.6597);
  animation: fall-198 16s -25s linear infinite;
}
@keyframes fall-198 {
  70.484% {
    transform: translate(105.6229vw, 70.484vh) scale(0.6597);
  }
  to {
    transform: translate(102.05425vw, 100vh) scale(0.6597);
  }
}
.snow:nth-child(199) {
  opacity: 0.1557;
  transform: translate(60.332vw, -10px) scale(0.3603);
  animation: fall-199 18s -7s linear infinite;
}
@keyframes fall-199 {
  72.997% {
    transform: translate(64.7433vw, 72.997vh) scale(0.3603);
  }
  to {
    transform: translate(62.53765vw, 100vh) scale(0.3603);
  }
}
.snow:nth-child(200) {
  opacity: 0.5167;
  transform: translate(88.3316vw, -10px) scale(0.6977);
  animation: fall-200 16s -28s linear infinite;
}
@keyframes fall-200 {
  33.78% {
    transform: translate(81.1694vw, 33.78vh) scale(0.6977);
  }
  to {
    transform: translate(84.7505vw, 100vh) scale(0.6977);
  }
}
</style>


  
    
    
  
<title>관리자용 페이지</title>





</head>
<body >
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>




		
<div class="mx-5 mt-3 ">
  <h1 class="display-4 text-light">DAPAN & DA</h1>
  <p class="lead text-light">여기는 관리자, 경영자를 위한 페이지입니다.</p>
  <hr class="my-4" style="background-color: white;">
  
  <p class="text-light"><c:if test="${managerLogin != null }">${managerLogin.manager_id} 님, 환영합니다.</c:if> 아래 메뉴 중 선택하십시오.</p>
  
<a class="btn btn-light btn-lg" href="/">Home 바로가기</a> &nbsp; &nbsp;
  
  <c:if test="${managerLogin == null }">
  <a class="btn btn-light btn-lg" href="/manager/managerLogin">관리자/경영자 로그인</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/insert">관리자 등록하기</a> &nbsp; &nbsp;
  </c:if>
  
  <c:if test="${managerLogin != null }">
  <a class="btn btn-light btn-lg" href="/manager/logout">로그아웃</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/managerList">관리자 리스트</a> &nbsp; &nbsp;
  
  </c:if>
  
  <c:if test="${managerLogin.manager_id == 'employee'}">
  <a class="btn btn-light btn-lg" href="/manager/managerPage">통계</a> &nbsp; &nbsp;
  </c:if>
</div>


<br><br><br>
<div id="carouselExampleSlidesOnly " class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
       <img src="/resources/img/manager00.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img style="height: 550px;" src="/resources/img/manager02.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/img/manager03.png" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
 
 
 
<div class="container">
<jsp:include page="../manager/managerFooter.jsp" />
</div>


</body>
</html>