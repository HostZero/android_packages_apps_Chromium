.class Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;
.super Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;
.source "DocumentMigrationHelper.java"


# instance fields
.field private final mEntries:Ljava/util/List;

.field private final mSelectedTabId:I


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 2

    .prologue
    .line 108
    const-class v0, Lorg/chromium/chrome/browser/document/DocumentActivity;

    const-class v1, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;->mEntries:Ljava/util/List;

    .line 110
    iput p2, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;->mSelectedTabId:I

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public getSelectedTabId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;->mSelectedTabId:I

    return v0
.end method

.method public getTasksFromRecents(Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public isValidActivity(ZLandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method
