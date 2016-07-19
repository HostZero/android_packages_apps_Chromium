.class Lorg/chromium/chrome/browser/signin/AccountSigninView$3;
.super Ljava/lang/Object;
.source "AccountSigninView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemAccountsChanged()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public onSystemAccountsSeedingComplete()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->removeSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V

    .line 527
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$3;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPagePreviousAccountCheck()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$800(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    .line 528
    return-void
.end method
