# AWS IAM Access Analyzer Documentation

## IAM Access Analyzer Overview
- **Purpose**: Identify resources (e.g., Amazon S3 buckets, IAM roles) shared with external entities to reduce unintended access risks.
- **Mechanism**: Uses logic-based reasoning to analyze resource-based policies and generates findings for external access instances.

**AWS Identity and Access Management (IAM) Access Analyzer is a tool that helps you set, verify, and refine your IAM policies by providing a suite of capabilities. It includes:**

- IAM Access Analyzer external access analyzers help [identify resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html#what-is-access-analyzer-resource-identification) in your organization and accounts that are shared with an external entity.
- IAM Access Analyzer unused access analyzers help [identify unused access](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html#what-is-access-analyzer-unused-access-analysis) in your organization and accounts.
- IAM Access Analyzer [validates IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html#what-is-access-analyzer-policy-validation) against policy grammar and AWS best practices.
- IAM Access Analyzer custom policy checks help [validate IAM policies against your specified security standards](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html#what-is-access-analyzer-policy-checks).
- IAM Access Analyzer [generates IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html#what-is-access-analyzer-policy-generation) based on access activity in your AWS CloudTrail logs.

## Key Features

### Findings
- Highlight resources shared externally.
- Include details like resource type, external entity access, and permissions granted.
- Help determine if access is intentional or poses a security risk.

### Policy Analysis
- Automatically analyzes resource-based policies periodically and within 30 minutes of changes.
- Identifies and reports external access not within the defined "zone of trust" (organization or account).

### Dashboard
- Provides a visual summary of findings.
- Displays findings split between public and cross-account access, with a breakdown by resource type.

## Zones of Trust
- The account or organization defined as trusted for the analyzer.
- Internal access within the zone of trust is not flagged as external.

## Policy Updates
- IAM Access Analyzer promptly reviews new or updated policies (approximately within 30 minutes).
- Performs periodic scans to ensure updated access permissions align with security policies.

## Edge Cases and Manual Actions

### Delayed Findings
- Rare delays can occur under specific conditions (e.g., AWS CloudTrail log delivery issues, multi-region S3 access point updates).
- Delays may extend up to 24 hours for periodic scans.

### Manual Resource Rescan
- Trigger a manual scan of resource policies via the "Rescan" link in the Findings dashboard or the `StartResourceScan` API operation.

## Use Cases
- Prevent unintentional access risks.
- Preview policy changes before deployment.
- Monitor findings and take corrective action to resolve access risks.

## Learn More
- [View the IAM Access Analyzer findings dashboard](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-findings-dashboard.html)
- [Resolve IAM Access Analyzer findings](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-resolve-findings.html)

## Key Resources

### General Documentation
1. **Overview of IAM Access Analyzer**  
   [What is Access Analyzer?](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
   - Provides an introduction to IAM Access Analyzer, its features, and benefits.

2. **Getting Started with IAM Access Analyzer**  
   [Getting Started Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html)
   - Learn about the requirements necessary to use and manage IAM Access Analyzer, and how to enable it.

3. **Understanding IAM Access Analyzer Findings**  
   [Understanding Findings](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-concepts.html)
   - Insights into how IAM Access Analyzer generates findings and how to interpret them.

4. **IAM Access Analyzer Pricing**  
   [Pricing Details](https://aws.amazon.com/iam/access-analyzer/)
   - Understand the pricing model for IAM Access Analyzer, including charges for unused access analysis and custom policy checks.

5. **IAM Access Analyzer API Reference**  
   [API Reference](https://docs.aws.amazon.com/access-analyzer/latest/APIReference/Welcome.html)
   - Explore the API operations available for programmatically interacting with IAM Access Analyzer.

6. **AWS IAM Access Analyzer Samples**  
   [Sample Code and Demos](https://github.com/aws-samples/aws-iam-access-analyzer-samples)
   - Automate policy validation workflows using IAM Access Analyzer APIs.

---

### Using IAM Access Analyzer with AWS Organizations
IAM Access Analyzer integrates with AWS Organizations to monitor and manage access across your organization's accounts. This helps in identifying resources shared with external entities and ensuring access permissions align with security policies.

1. **Overview of IAM Access Analyzer in AWS Organizations**  
   [What is Access Analyzer?](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
   - Details on IAM Access Analyzer's integration with AWS Organizations.

2. **Getting Started with IAM Access Analyzer for Organizations**  
   [Getting Started Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html)
   - Instructions to enable and use IAM Access Analyzer within AWS Organizations.

3. **New – Use AWS IAM Access Analyzer in AWS Organizations**  
   [AWS Blog Post](https://aws.amazon.com/blogs/aws/new-use-aws-iam-access-analyzer-in-aws-organizations/)
   - Explains how to create analyzers with your organization as the zone of trust.

4. **Use IAM Access Analyzer to Monitor Resources in AWS Organization Accounts**  
   [Knowledge Center Article](https://repost.aws/knowledge-center/iam-access-analyzer-organization)
   - Step-by-step instructions to monitor resources across AWS Organization accounts.

---

## Summary
By leveraging IAM Access Analyzer and its integration with AWS Organizations, you can enhance your security posture, identify potential access risks, and maintain control over resource access policies.

---

**Note**: Visit the official AWS documentation links provided above for more details and updates.