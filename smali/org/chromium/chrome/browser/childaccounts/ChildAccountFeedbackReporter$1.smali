.class final Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter$1;
.super Ljava/lang/Object;
.source "ChildAccountFeedbackReporter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;


# instance fields
.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter$1;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter$1;->val$description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->setDescription(Ljava/lang/String;)V

    .line 34
    # getter for: Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;
    invoke-static {}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->access$000()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/feedback/FeedbackReporter;->reportFeedback(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V

    .line 35
    return-void
.end method
