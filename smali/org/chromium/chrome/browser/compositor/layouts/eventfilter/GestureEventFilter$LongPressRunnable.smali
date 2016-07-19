.class Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;
.super Ljava/lang/Object;
.source "GestureEventFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mInitialEvent:Landroid/view/MotionEvent;

.field private mIsPending:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mIsPending:Z

    .line 52
    return-void
.end method

.method public getInitialEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mInitialEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public init(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mInitialEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mInitialEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mInitialEvent:Landroid/view/MotionEvent;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mIsPending:Z

    .line 42
    return-void
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mIsPending:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mInitialEvent:Landroid/view/MotionEvent;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->longPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Landroid/view/MotionEvent;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->mIsPending:Z

    .line 48
    return-void
.end method
