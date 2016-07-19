.class final Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils$1;
.super Ljava/lang/Object;
.source "DomDistillerUIUtils.java"

# interfaces
.implements Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;


# instance fields
.field final synthetic val$good:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils$1;->val$good:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils$1;->val$good:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "good"

    .line 72
    :goto_0
    const-string/jumbo v1, "Distillation quality"

    invoke-virtual {p1, v1, v0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    # getter for: Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;
    invoke-static {}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->access$000()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/feedback/FeedbackReporter;->reportFeedback(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V

    .line 74
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "bad"

    goto :goto_0
.end method
