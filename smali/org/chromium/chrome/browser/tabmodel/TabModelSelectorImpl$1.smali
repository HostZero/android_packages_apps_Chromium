.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$1;
.super Ljava/lang/Object;
.source "TabModelSelectorImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsRead(IILjava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onInitialized(I)V
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "Tabs.CountAtStartup"

    invoke-static {v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public onMetadataSavedAsynchronously()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onStateLoaded(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->markTabStateInitialized()V

    .line 85
    return-void
.end method
