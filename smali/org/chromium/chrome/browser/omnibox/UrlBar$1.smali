.class Lorg/chromium/chrome/browser/omnibox/UrlBar$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UrlBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$1;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$1;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->performLongClick()Z

    .line 220
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$1;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->requestFocus()Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method
