.class Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;
.super Ljava/lang/Object;
.source "TabPersistentStore.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

.field final synthetic val$isIncognitoSelected:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Z)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->val$isIncognitoSelected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsRead(IILjava/lang/String;Ljava/lang/Boolean;ZZ)V
    .locals 6

    .prologue
    .line 744
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    invoke-direct {v0, p2, p1, p4, p3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;-><init>(IILjava/lang/Boolean;Ljava/lang/String;)V

    .line 747
    if-eqz p6, :cond_0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->val$isIncognitoSelected:Z

    if-nez v1, :cond_1

    :cond_0
    if-eqz p5, :cond_3

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->val$isIncognitoSelected:Z

    if-nez v1, :cond_3

    .line 750
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$100(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 755
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;->onDetailsRead(IILjava/lang/String;ZZ)V

    .line 759
    :cond_2
    return-void

    .line 752
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mTabsToRestore:Ljava/util/Deque;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$100(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method
