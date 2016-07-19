.class Lorg/chromium/chrome/browser/feedback/FeedbackCollector$2;
.super Ljava/lang/Object;
.source "FeedbackCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/feedback/FeedbackCollector;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$2;->this$0:Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$2;->this$0:Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    # getter for: Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mCallback:Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;
    invoke-static {v0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->access$000(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$2;->this$0:Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;->onResult(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V

    .line 176
    return-void
.end method
