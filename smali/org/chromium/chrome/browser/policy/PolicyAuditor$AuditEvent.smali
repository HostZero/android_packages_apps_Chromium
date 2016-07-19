.class public final enum Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;
.super Ljava/lang/Enum;
.source "PolicyAuditor.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

.field public static final enum AUTOFILL_SELECTED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

.field public static final enum OPEN_POPUP_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

.field public static final enum OPEN_URL_BLOCKED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

.field public static final enum OPEN_URL_FAILURE:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

.field public static final enum OPEN_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v1, "OPEN_URL_SUCCESS"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    .line 20
    new-instance v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v1, "OPEN_URL_FAILURE"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_FAILURE:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    .line 21
    new-instance v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v1, "OPEN_URL_BLOCKED"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_BLOCKED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    .line 22
    new-instance v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v1, "OPEN_POPUP_URL_SUCCESS"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_POPUP_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    .line 23
    new-instance v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    const-string/jumbo v1, "AUTOFILL_SELECTED"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->AUTOFILL_SELECTED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    sget-object v1, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_FAILURE:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_URL_BLOCKED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->OPEN_POPUP_URL_SUCCESS:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->AUTOFILL_SELECTED:Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->$VALUES:[Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->$VALUES:[Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/policy/PolicyAuditor$AuditEvent;

    return-object v0
.end method
