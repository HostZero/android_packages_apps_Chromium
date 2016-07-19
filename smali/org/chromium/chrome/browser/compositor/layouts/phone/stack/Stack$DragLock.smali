.class public final enum Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;
.super Ljava/lang/Enum;
.source "Stack.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

.field public static final enum DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

.field public static final enum NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

.field public static final enum SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    const-string/jumbo v1, "SCROLL"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    const-string/jumbo v1, "DISCARD"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    return-object v0
.end method
