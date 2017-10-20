class Timer {
  int savedTime;
  float totalTime;

  Timer(int _totalTime) {
    this.totalTime = _totalTime ;
  }

  void start() {
    savedTime = millis();
  }  
  
  void reduceTotalTime(float time)  {
    this.totalTime -= time;
  }

  boolean isTimerFinished() {
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
  
  
}