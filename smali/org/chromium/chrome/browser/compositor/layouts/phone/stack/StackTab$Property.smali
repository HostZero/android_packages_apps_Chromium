.class final enum Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;
.super Ljava/lang/Enum;
.source "StackTab.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum X_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum X_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum X_OUT_OF_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum Y_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum Y_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

.field public static final enum Y_OUT_OF_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "SCALE"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "SCROLL_OFFSET"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "ALPHA"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 31
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "X_IN_STACK_INFLUENCE"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "X_IN_STACK_OFFSET"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "X_OUT_OF_STACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_OUT_OF_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "Y_IN_STACK_INFLUENCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "Y_IN_STACK_OFFSET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "Y_OUT_OF_STACK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_OUT_OF_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-string/jumbo v1, "DISCARD_AMOUNT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_OUT_OF_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_OUT_OF_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    return-object v0
.end method
