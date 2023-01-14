<?php
function dialog ($tit,$des){
    echo "
        <div id='dialog' class='dialog'>
            <section >
                <button id='btn' type='button'>
                    <span>
                        <svg stroke='currentColor' fill='currentColor' stroke-width='0' version='1.1' viewBox='0 0 16 16' height='1em' width='1em' xmlns='http://www.w3.org/2000/svg'><path d='M8 0c-4.418 0-8 3.582-8 8s3.582 8 8 8 8-3.582 8-8-3.582-8-8-8zM8 14.5c-3.59 0-6.5-2.91-6.5-6.5s2.91-6.5 6.5-6.5 6.5 2.91 6.5 6.5-2.91 6.5-6.5 6.5z'></path><path d='M10.5 4l-2.5 2.5-2.5-2.5-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 2.5-2.5 2.5 2.5 1.5-1.5-2.5-2.5 2.5-2.5z'></path></svg>
                    </span>
                </button>
                <div class='diaTit'>
                    <strong>$tit</strong>
                </div>
                <div class='diaDes'>$des</div>
            </section>
        </div>
        <script>
            let btn = document.getElementById('dialog');
            btn.addEventListener('click', e => {
                // btn.style.transform = 'scale(0)';
                // btn.style.height = '0px';
                btn.style.display='none';
            })
        </script>
    ";
}

?>