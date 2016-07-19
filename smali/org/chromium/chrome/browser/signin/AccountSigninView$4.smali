.class Lorg/chromium/chrome/browser/signin/AccountSigninView$4;
.super Ljava/lang/Object;
.source "AccountSigninView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$4;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$4;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPage()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$900(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    .line 549
    return-void
.end method
