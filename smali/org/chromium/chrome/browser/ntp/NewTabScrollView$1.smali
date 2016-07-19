.class Lorg/chromium/chrome/browser/ntp/NewTabScrollView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NewTabScrollView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabScrollView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView$1;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView$1;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->requestFocus()Z

    .line 61
    return v0
.end method
