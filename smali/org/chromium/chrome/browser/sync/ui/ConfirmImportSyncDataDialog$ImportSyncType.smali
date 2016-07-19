.class public final enum Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;
.super Ljava/lang/Enum;
.source "ConfirmImportSyncDataDialog.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

.field public static final enum PREVIOUS_DATA_FOUND:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

.field public static final enum SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    const-string/jumbo v1, "SWITCHING_SYNC_ACCOUNTS"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    new-instance v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    const-string/jumbo v1, "PREVIOUS_DATA_FOUND"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->PREVIOUS_DATA_FOUND:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    sget-object v1, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->PREVIOUS_DATA_FOUND:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->$VALUES:[Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->$VALUES:[Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    return-object v0
.end method
