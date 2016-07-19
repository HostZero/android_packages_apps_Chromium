.class Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;
.super Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;
.source "ToolbarControlContainer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    .line 237
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;-><init>(Landroid/content/Context;)V

    .line 238
    return-void
.end method


# virtual methods
.method public shouldRecognizeSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->isOnTabStrip(Landroid/view/MotionEvent;)Z
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;)Lorg/chromium/chrome/browser/toolbar/Toolbar;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->shouldIgnoreSwipeGesture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    invoke-static {v1, v2}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x1

    goto :goto_0
.end method
