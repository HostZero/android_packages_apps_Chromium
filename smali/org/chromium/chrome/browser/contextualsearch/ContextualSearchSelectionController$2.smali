.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$2;
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
    .line 299
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$2;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleValidTap()V

    .line 303
    return-void
.end method
