.class public final enum Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;
.super Ljava/lang/Enum;
.source "ContextualSearchIconSpriteControl.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

.field public static final enum APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    const-string/jumbo v1, "APPEARANCE"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    return-object v0
.end method
