.class Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;
.super Ljava/lang/Object;
.source "DocumentMigrationHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;


# instance fields
.field private mSelectedTabId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;->mSelectedTabId:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedTabId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;->mSelectedTabId:I

    return v0
.end method

.method public onDetailsRead(IILjava/lang/String;Ljava/lang/Boolean;ZZ)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/TabIdManager;->incrementIdCounterTo(I)V

    .line 87
    if-nez p5, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iput p2, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;->mSelectedTabId:I

    goto :goto_0
.end method
