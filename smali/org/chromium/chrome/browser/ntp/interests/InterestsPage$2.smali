.class Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;
.super Ljava/lang/Object;
.source "InterestsPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

.field final synthetic val$listener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;->val$listener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterestClicked(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mClicked:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->access$102(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;Z)Z

    .line 91
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 92
    const-string/jumbo v0, "MobileNTP.Interests.Click"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;->val$listener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;->onInterestClicked(Ljava/lang/String;)V

    .line 94
    return-void
.end method
