.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;
.super Ljava/lang/Object;
.source "DocumentTabModelSelector.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 7

    .prologue
    .line 105
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->access$100(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    const/4 v4, 0x1

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->sPrioritizedTabId:I
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->access$200()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->val$context:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;ZILandroid/content/Context;)V

    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mRegularTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isNativeInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->initializeNative()V

    .line 111
    :cond_0
    return-object v0
.end method

.method public doOffTheRecordTabsExist()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->mIncognitoTabModel:Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->access$400(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;)Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
