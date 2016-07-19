.class Lorg/chromium/chrome/browser/signin/AccountSigninView$8;
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
    .line 594
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$8;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 597
    const-string/jumbo v0, "Signin_Undo_Signin"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$8;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountSigninView;->showSigninPage()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$1100(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    .line 599
    return-void
.end method
