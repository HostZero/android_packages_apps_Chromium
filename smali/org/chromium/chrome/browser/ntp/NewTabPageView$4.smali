.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$4;
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
    .line 314
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$4;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$4;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->navigateToRecentTabs()V

    .line 318
    return-void
.end method
