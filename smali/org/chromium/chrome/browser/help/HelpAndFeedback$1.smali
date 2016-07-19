.class Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;
.super Ljava/lang/Object;
.source "HelpAndFeedback.java"

# interfaces
.implements Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/help/HelpAndFeedback;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$helpContext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/help/HelpAndFeedback;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;->this$0:Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    iput-object p2, p0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;->val$helpContext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;->this$0:Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    iget-object v1, p0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;->val$helpContext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V

    .line 78
    return-void
.end method
