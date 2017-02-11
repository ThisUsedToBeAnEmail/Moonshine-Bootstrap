use Moonshine::Test qw/:all/;
use strict;
use warnings;
use Moonshine::Bootstrap::v3;

moon_test(
    name => 'Bootstrap - embed_responsive - embed_responsive_iframe',
    build => {
        class => 'Moonshine::Bootstrap::v3',        
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
        {
            test => 'obj',
            func => 'caret',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<span class="caret"></span>',
                }
            ],
        },
       {
            test => 'obj',
            func => 'dropdown_button',
            args   => {
                split => 1,
                id    => 'dropdownMenu1',
                data  => 'Dropdown',
            },
			expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<button class="btn btn-default" type="button">Dropdown</button><button class="dropdown-toggle btn btn-default" id="dropdownMenu1" type="button" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown"><span class="caret"></span></button>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'separator_li',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="divider" role="separator"></li>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown_header_li',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="dropdown-header"></li>',
                }
            ],
        },
    ],
);

sunrise();

1;
