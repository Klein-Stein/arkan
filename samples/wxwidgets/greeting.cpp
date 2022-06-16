#include <wx/wx.h>
#include "lib/cpp/include/arkan.hpp"

class MainApp: public wxApp
    { 
    public:
      virtual bool OnInit();
    };

class MainFrame: public wxFrame
{
public:
    MainFrame( const wxString &title, const wxPoint &pos, const wxSize &size );
    wxButton *HelloWorld;
    void OnExit( wxCommandEvent& event );

    DECLARE_EVENT_TABLE()
};
  
enum
{
    BUTTON_Hello = wxID_HIGHEST + 1
};

bool MainApp::OnInit()
{
    MainFrame *MainWin = new MainFrame(wxString(arkan::greeting()), wxPoint(1, 1), wxSize(300,200));
    MainWin->Show(TRUE);
    SetTopWindow(MainWin);

return TRUE;
} 
 
BEGIN_EVENT_TABLE ( MainFrame, wxFrame )
    EVT_BUTTON ( BUTTON_Hello, MainFrame::OnExit )
END_EVENT_TABLE()

MainFrame::MainFrame(const wxString &title, const wxPoint &pos, const wxSize
                     &size): wxFrame((wxFrame*)NULL,  - 1, title, pos, size)
{
    HelloWorld = new wxButton(this, BUTTON_Hello, wxString(arkan::greeting()),
                              wxDefaultPosition, wxDefaultSize, 0);
}
 
void MainFrame::OnExit( wxCommandEvent& event )
{
    Close(TRUE);
}

IMPLEMENT_APP(MainApp)