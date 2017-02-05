use Moonshine::Test qw/:all/;
use strict;
use warnings;
use Moonshine::Bootstrap;

moon_test(
    name => 'Bootstrap - embed_responsive - embed_responsive_iframe',
    build => {
        class => 'Moonshine::Bootstrap',        
        args => { version => 'v3' },
    },
    instructions => [
         {
            test => 'obj',
            func => 'embed_responsive',
            args => {
                children => [
                    {
                        action => 'embed_responsive_iframe',
                        src => 'http://lnation.org',
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="embed-responsive"><iframe class="embed-responsive-item" src="http://lnation.org"></iframe></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'embed_res',
            args => {
                iframe => {
                    src => 'http://lnation.org',
                },
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="embed-responsive"><iframe class="embed-responsive-item" src="http://lnation.org"></iframe></div>'
                }
            ],
        },
    ],
);

sunrise();

1;
