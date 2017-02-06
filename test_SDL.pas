program test_SDL;

uses crt,SDL2, SDL2_image;

var
i : integer;
sdlWindow1 : PSDL_Window;
sdlRenderer : PSDL_Renderer;
sdlRect1 : PSDL_Rect;
sdlPoints1 : array[0..499] of PSDL_Point;
{sdlWindow1 : PSDL_Window;
sdlRenderer : PSDL_Renderer;
sdlTexture1 : PSDL_Texture;}

begin

  clrscr;
  {//initilization of video subsystem
  if SDL_Init( SDL_INIT_VIDEO ) < 0 then HALT;

  sdlWindow1 := SDL_CreateWindow( 'Window1', 50, 50, 500, 500, SDL_WINDOW_SHOWN );
  if sdlWindow1 = nil then HALT;

  sdlRenderer := SDL_CreateRenderer( sdlWindow1, -1, 0 );
  if sdlRenderer = nil then HALT;

  sdlTexture1 := IMG_LoadTexture( sdlRenderer, 'C:\fpsdl.jpg' );
  if sdlTexture1 = nil then HALT;
  SDL_RenderCopy( sdlRenderer, sdlTexture1, nil, nil );
  SDL_RenderPresent (sdlRenderer);
  SDL_Delay( 2000 );

  SDL_DestroyTexture( sdlTexture1 );
  SDL_DestroyRenderer( sdlRenderer );
  SDL_DestroyWindow ( sdlWindow1 );

  //shutting down video subsystem
  SDL_Quit;}
 
 
  {//initilization of video subsystem
  if SDL_Init( SDL_INIT_VIDEO ) < 0 then HALT;
 
  sdlWindow1 := SDL_CreateWindow( 'Window1', 50, 50, 500, 500, SDL_WINDOW_SHOWN );
  if sdlWindow1 = nil then HALT;
 
  sdlRenderer := SDL_CreateRenderer( sdlWindow1, -1, 0 );
  if sdlRenderer = nil then HALT;
 
  SDL_SetRenderDrawColor( sdlRenderer, 0, 255, 255, 255 );
  SDL_RenderClear( sdlRenderer );
  SDL_RenderPresent ( sdlRenderer );
  SDL_Delay( 1000 );
 
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
  SDL_RenderDrawLine( sdlRenderer, 10, 10, 490, 490 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 1000 );
 
  SDL_SetRenderDrawColor( sdlRenderer, 0, 0, 0, 255 );
  for i := 0 to 47 do SDL_RenderDrawPoint( sdlRenderer, 490-i*10, 10+i*10 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 1000 );
 
  new( sdlRect1 );
  sdlRect1^.x := 260; sdlRect1^.y := 10; sdlRect1^.w := 230; sdlRect1^.h := 230;
  SDL_SetRenderDrawColor( sdlRenderer, 0, 255, 0, 255 );
  SDL_RenderDrawRect( sdlRenderer, sdlRect1 );
 
  sdlRect1^.x := 10; sdlRect1^.y := 260;
  SDL_SetRenderDrawBlendMode( sdlRenderer, SDL_BLENDMODE_BLEND );
  SDL_SetRenderDrawColor( sdlRenderer, 0, 0, 255, 128 );
  SDL_RenderFillRect( sdlRenderer, sdlRect1 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 1000 );
 
  randomize;
  for i := 0 to 499 do
  begin
    new( sdlPoints1[i] );
    sdlPoints1[i]^.x := random(500);
    sdlPoints1[i]^.y := random(500);
  end;
 
  SDL_SetRenderDrawColor( sdlRenderer, 128, 128, 128, 255 );
  SDL_RenderDrawPoints( sdlRenderer, sdlPoints1[0], 500 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 3000 );
 
  for i := 0 to 499 do dispose( sdlPoints1[i] );
  dispose( sdlRect1 );
  SDL_DestroyRenderer( sdlRenderer );
  SDL_DestroyWindow ( sdlWindow1 );
 
  //shutting down video subsystem
  SDL_Quit;}
  if SDL_Init( SDL_INIT_VIDEO ) < 0 then HALT;
 
  sdlWindow1 := SDL_CreateWindow( 'Window1', 50, 50, 500, 500, SDL_WINDOW_SHOWN );
  if sdlWindow1 = nil then HALT;
 
  sdlRenderer := SDL_CreateRenderer( sdlWindow1, -1, 0 );
  if sdlRenderer = nil then HALT;
 
  SDL_SetRenderDrawColor( sdlRenderer, 255, 255,255, 255 );
  SDL_RenderClear( sdlRenderer );
  SDL_RenderPresent ( sdlRenderer );
  SDL_Delay( 1000 );
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
  SDL_RenderDrawLine( sdlRenderer, 250, 10, 400, 400 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 1000 );
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
  SDL_RenderDrawLine( sdlRenderer, 250, 10, 100, 400 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 1000 );
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
  SDL_RenderDrawLine( sdlRenderer, 100, 400, 400, 400 );
  SDL_RenderPresent( sdlRenderer );
  SDL_Delay( 1000 );
 
end.
