.class Lorg/chromium/chrome/browser/signin/AccountSigninView$9;
.super Ljava/lang/Object;
.source "AccountSigninView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$9;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$9;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$400(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$9;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mAccountName:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$100(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;->onAccountSelected(Ljava/lang/String;Z)V

    .line 609
    return-void
.end method
