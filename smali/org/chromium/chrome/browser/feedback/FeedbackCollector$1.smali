.class Lorg/chromium/chrome/browser/feedback/FeedbackCollector$1;
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
    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$1;->this$0:Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$1;->this$0:Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->maybePostResult()V

    .line 159
    return-void
.end method
