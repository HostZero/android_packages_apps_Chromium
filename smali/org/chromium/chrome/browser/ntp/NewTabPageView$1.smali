.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$1;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$1;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$1;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->focusSearchBox(ZLjava/lang/String;)V

    .line 284
    return-void
.end method
