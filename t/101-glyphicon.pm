use Moonshine::Test qw/:all/;

use Moonshine::Bootstrap::v3::Glyphicon;

moon_test(
    name => 'glyphicon',
    build => {
        class => 'Moonshine::Bootstrap::v3::Glyphicon',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'glyphicon',
            args => {
                switch => 'search',
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<span class="glyphicon glyphicon-search" aria-hidden="true"></span>',
                }
            ],
        },
    ],
);

sunrise();

1;
