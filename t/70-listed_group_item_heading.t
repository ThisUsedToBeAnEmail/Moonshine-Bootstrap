use Moonshine::Test qw/:all/;

use Moonshine::Bootstrap::Component::LinkedGroupItemHeading;
use Moonshine::Bootstrap::v3::LinkedGroupItemHeading;

moon_test(
    name => 'listed_group_item_heading',
    build => {
        class => 'Moonshine::Bootstrap::Component::LinkedGroupItemHeading',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'listed_group_item_heading',
            expected => 'Moonshine::Element',
            args   => {
                data => 'Hello World',
            },
            subtest => [
                {
                    test => 'render',
                    expected => '<h4 class="list-group-item-heading">Hello World</h4>'
                }
            ],
        },
    ],
);

moon_test(
    name => 'listed_group_item_heading',
    build => {
        class => 'Moonshine::Bootstrap::v3::LinkedGroupItemHeading',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'listed_group_item_heading',
            expected => 'Moonshine::Element',
            args   => {
                data => 'Hello World',
            },
            subtest => [
                {
                    test => 'render',
                    expected => '<h4 class="list-group-item-heading">Hello World</h4>'
                }
            ],
        },
    ],
);

sunrise();
