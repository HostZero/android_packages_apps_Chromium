.class Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask$1;
.super Ljava/lang/Object;
.source "ConnectivityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask$1;->this$1:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask$1;->this$1:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;

    iget-object v0, v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    # getter for: Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mCallback:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;
    invoke-static {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->access$200(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;)Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask$1;->this$1:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;

    iget-object v1, v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->get()Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;->onResult(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;)V

    .line 253
    return-void
.end method
