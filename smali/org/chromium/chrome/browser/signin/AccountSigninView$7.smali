.class Lorg/chromium/chrome/browser/signin/AccountSigninView$7;
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
    .line 579
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$7;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 582
    const-string/jumbo v0, "Signin_AddAccountToDevice"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$7;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountSigninView;->mListener:Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$400(Lorg/chromium/chrome/browser/signin/AccountSigninView;)Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView$Listener;->onNewAccount()V

    .line 584
    return-void
.end method
