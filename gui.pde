/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:902747:
  appc.background(230);
} //_CODE_:window1:902747:

public void Planetselected(GDropList source, GEvent event) { //_CODE_:Planet:517987:
  selectedplanet = source.getSelectedText();
  Planet planet = new Planet(selectedplanet);
} //_CODE_:Planet:517987:




// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 240, 120, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  Planet = new GDropList(window1, 20, 11, 90, 80, 3, 10);
  Planet.setItems(loadStrings("list_517987"), 0);
  Planet.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Planet.addEventHandler(this, "Planetselected");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GDropList Planet; 
