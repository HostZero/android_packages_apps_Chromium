.class Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ContextualSearchEventFilter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$1;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->handleScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    invoke-static {v0, p1, p2, p4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->handleSingleTapUp(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
