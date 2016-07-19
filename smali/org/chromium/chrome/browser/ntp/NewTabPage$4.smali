.class Lorg/chromium/chrome/browser/ntp/NewTabPage$4;
.super Ljava/lang/Object;
.source "NewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$4;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$4;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$4;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mMostVisitedSites:Lorg/chromium/chrome/browser/profiles/MostVisitedSites;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$600(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Lorg/chromium/chrome/browser/profiles/MostVisitedSites;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/profiles/MostVisitedSites;->removeBlacklistedUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 620
    return-void
.end method
