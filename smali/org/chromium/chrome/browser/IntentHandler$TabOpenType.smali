.class public final enum Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;
.super Ljava/lang/Enum;
.source "IntentHandler.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

.field public static final enum BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

.field public static final enum CLOBBER_CURRENT_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

.field public static final enum OPEN_NEW_INCOGNITO_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

.field public static final enum OPEN_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

.field public static final enum REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

.field public static final enum REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    const-string/jumbo v1, "OPEN_NEW_TAB"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 202
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    const-string/jumbo v1, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 204
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    const-string/jumbo v1, "REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 205
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    const-string/jumbo v1, "CLOBBER_CURRENT_TAB"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->CLOBBER_CURRENT_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 206
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    const-string/jumbo v1, "BRING_TAB_TO_FRONT"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 208
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    const-string/jumbo v1, "OPEN_NEW_INCOGNITO_TAB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_INCOGNITO_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 199
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->CLOBBER_CURRENT_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_INCOGNITO_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->$VALUES:[Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;
    .locals 1

    .prologue
    .line 199
    const-class v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->$VALUES:[Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    return-object v0
.end method
