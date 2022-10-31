# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wifi_manager//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h" 1
# 82 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 83 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 84 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h" 2
# 95 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"

# 95 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
struct event
{

   int type;







   void *data;
};

struct state;
# 166 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
struct transition
{

   int eventType;
# 178 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
   void *condition;
# 193 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
   
# 193 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h" 3 4
  _Bool 
# 193 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
       ( *guard )( void *condition, struct event *event );
# 206 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
   void ( *action )( void *currentStateData, struct event *event,
         void *newStateData );







   const struct state *nextState;
};
# 299 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
struct state
{



   const struct state *parentState;




   const struct state *entryState;



   struct transition *transitions;



   size_t numTransitions;




   void *data;
# 336 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
   void ( *entryAction )( void *stateData, struct event *event );
# 347 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
   void ( *exitAction )( void *stateData, struct event *event );
};






struct stateMachine
{

   const struct state *currentState;






   const struct state *previousState;







   const struct state *errorState;
};
# 397 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
void stateM_init( struct stateMachine *stateMachine,
      const struct state *initialState, const struct state *errorState );




enum stateM_handleEventRetVals
{

   stateM_errArg = -2,
# 419 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
   stateM_errorStateReached,

   stateM_stateChanged,







   stateM_stateLoopSelf,






   stateM_noStateChange,

   stateM_finalStateReached,
};
# 460 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
int stateM_handleEvent( struct stateMachine *stateMachine,
      struct event *event );
# 471 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
const struct state *stateM_currentState( struct stateMachine *stateMachine );
# 482 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
const struct state *stateM_previousState( struct stateMachine *stateMachine );
# 493 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"

# 493 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h" 3 4
_Bool 
# 493 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
    stateM_stopped( struct stateMachine *stateMachine );
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 2

static void goToErrorState( struct stateMachine *stateMachine,
      struct event *const event );
static struct transition *getTransition( struct stateMachine *stateMachine,
      const struct state *state, struct event *const event );

void stateM_init( struct stateMachine *fsm,
      const struct state *initialState, const struct state *errorState )
{
   if ( !fsm )
      return;

   fsm->currentState = initialState;
   fsm->previousState = 
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 3 4
                       ((void *)0)
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
                           ;
   fsm->errorState = errorState;
}

int stateM_handleEvent( struct stateMachine *fsm,
      struct event *event )
{
   if ( !fsm || !event )
      return stateM_errArg;

   if ( !fsm->currentState )
   {
      goToErrorState( fsm, event );
      return stateM_errorStateReached;
   }

   if ( !fsm->currentState->numTransitions )
      return stateM_noStateChange;

   const struct state *nextState = fsm->currentState;
   do {
      struct transition *transition = getTransition( fsm, nextState, event );




      if ( !transition )
      {
         nextState = nextState->parentState;
         continue;
      }



      if ( !transition->nextState )
      {
         goToErrorState( fsm, event );
         return stateM_errorStateReached;
      }

      nextState = transition->nextState;




      while ( nextState->entryState )
         nextState = nextState->entryState;



      if ( nextState != fsm->currentState && fsm->currentState->exitAction )
         fsm->currentState->exitAction( fsm->currentState->data, event );


      if ( transition->action )
         transition->action( fsm->currentState->data, event, nextState->
               data );



      if ( nextState != fsm->currentState && nextState->entryAction )
         nextState->entryAction( nextState->data, event );

      fsm->previousState = fsm->currentState;
      fsm->currentState = nextState;


      if ( fsm->currentState == fsm->previousState )
         return stateM_stateLoopSelf;

      if ( fsm->currentState == fsm->errorState )
         return stateM_errorStateReached;



      if ( !fsm->currentState->numTransitions )
         return stateM_finalStateReached;

      return stateM_stateChanged;
   } while ( nextState );

   return stateM_noStateChange;
}

const struct state *stateM_currentState( struct stateMachine *fsm )
{
   if ( !fsm )
      return 
# 137 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 3 4
            ((void *)0)
# 137 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
                ;

   return fsm->currentState;
}

const struct state *stateM_previousState( struct stateMachine *fsm )
{
   if ( !fsm )
      return 
# 145 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 3 4
            ((void *)0)
# 145 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
                ;

   return fsm->previousState;
}


static void goToErrorState( struct stateMachine *fsm,
      struct event *const event )
{
   fsm->previousState = fsm->currentState;
   fsm->currentState = fsm->errorState;

   if ( fsm->currentState && fsm->currentState->entryAction )
      fsm->currentState->entryAction( fsm->currentState->data, event );
}

static struct transition *getTransition( struct stateMachine *fsm,
      const struct state *state, struct event *const event )
{
   size_t i;

   for ( i = 0; i < state->numTransitions; ++i )
   {
      struct transition *t = &state->transitions[ i ];


      if ( t->eventType == event->type )
      {
         if ( !t->guard )
            return t;

         else if ( t->guard( t->condition, event ) )
            return t;
      }
   }


   return 
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 3 4
         ((void *)0)
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
             ;
}


# 185 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 3 4
_Bool 
# 185 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
    stateM_stopped( struct stateMachine *stateMachine )
{
   if ( !stateMachine )
      return 
# 188 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c" 3 4
            1
# 188 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
                ;

   return stateMachine->currentState->numTransitions == 0;
}
