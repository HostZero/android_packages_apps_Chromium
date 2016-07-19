.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$4;
.super Ljava/lang/Object;
.source "TabModelSelectorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->notifyChanged()V

    .line 250
    return-void
.end method
