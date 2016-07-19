.class Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$1;
.super Ljava/lang/Object;
.source "IncognitoNewTabPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$1;->this$0:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;->loadIncognitoLearnMore()V

    .line 63
    return-void
.end method
