#include <gtkmm.h>
#include "lib/cpp/include/arkan.hpp"

int main(int argc, char* argv[])
{
    auto application = Gtk::Application::create(argc, argv);
    Gtk::Window window;
    Gtk::Button button;
    button.add_label(arkan::greeting());
    window.add(button);
    window.show_all_children();
    return application->run(window);
}