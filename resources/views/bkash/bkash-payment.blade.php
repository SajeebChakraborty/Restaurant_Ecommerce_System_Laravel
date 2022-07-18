<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

<script id="myScript"
        src="https://scripts.sandbox.bka.sh/versions/1.2.0-beta/checkout/bKash-checkout-sandbox.js"></script>

{{--    This Commented Script for Live Production --}}
{{--    <script id="myScript"--}}
{{--            src="https://scripts.pay.bka.sh/versions/1.2.0-beta/checkout/bKash-checkout.js"></script>--}}


<button class="btn btn-success" id="bKash_button" onclick="BkashPayment()">
    Pay with bKash
</button>


@include('bkash-script')