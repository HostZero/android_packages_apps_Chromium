.class public final enum Lorg/chromium/chrome/browser/DevToolsServer$Security;
.super Ljava/lang/Enum;
.source "DevToolsServer.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/DevToolsServer$Security;

.field public static final enum ALLOW_DEBUG_PERMISSION:Lorg/chromium/chrome/browser/DevToolsServer$Security;

.field public static final enum DEFAULT:Lorg/chromium/chrome/browser/DevToolsServer$Security;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/DevToolsServer$Security;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;->DEFAULT:Lorg/chromium/chrome/browser/DevToolsServer$Security;

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;

    const-string/jumbo v1, "ALLOW_DEBUG_PERMISSION"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/DevToolsServer$Security;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;->ALLOW_DEBUG_PERMISSION:Lorg/chromium/chrome/browser/DevToolsServer$Security;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/chromium/chrome/browser/DevToolsServer$Security;

    sget-object v1, Lorg/chromium/chrome/browser/DevToolsServer$Security;->DEFAULT:Lorg/chromium/chrome/browser/DevToolsServer$Security;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/DevToolsServer$Security;->ALLOW_DEBUG_PERMISSION:Lorg/chromium/chrome/browser/DevToolsServer$Security;

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;->$VALUES:[Lorg/chromium/chrome/browser/DevToolsServer$Security;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/DevToolsServer$Security;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/DevToolsServer$Security;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;->$VALUES:[Lorg/chromium/chrome/browser/DevToolsServer$Security;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/DevToolsServer$Security;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/DevToolsServer$Security;

    return-object v0
.end method
