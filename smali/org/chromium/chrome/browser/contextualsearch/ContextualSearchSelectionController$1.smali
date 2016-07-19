.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;
.super Ljava/lang/Object;
.source "ContextualSearchSelectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    # invokes: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->onInvalidTapDetectionTimeout()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->access$300(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V

    .line 108
    return-void
.end method
