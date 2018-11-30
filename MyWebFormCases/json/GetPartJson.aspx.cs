using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.json
{
    public partial class GetPartJson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var client = new HttpClient();

            Task<string> task = client.GetStringAsync("http://localhost:55466/api/Values/1");
             string result=   task.Result;
           
            JToken jobj = JToken.Parse(result);
             
           string results=jobj["Results"].ToString();
           List<ProductReviews> reviews= JsonConvert.DeserializeObject<List<ProductReviews>>(results);

            Response.Write(JsonConvert.SerializeObject(reviews));




        }

        public class ProductReviews
        {
            public string Id { get; set; }
            public string CID { get; set; }
            public string SourceClient { get; set; }
            public DateTime LastModeratedTime { get; set; }
            public DateTime LastModificationTime { get; set; }
            public string ProductId { get; set; }
            public string CampaignId { get; set; }
            public string AuthorId { get; set; }
            public string ContentLocale { get; set; }
            public bool IsFeatured { get; set; }
            public int TotalClientResponseCount { get; set; }
            public int TotalCommentCount { get; set; }
            public int Rating { get; set; }

            public List<string> SecondaryRatingsOrder { get; set; }

            public bool IsRatingsOnly { get; set; }
            public int TotalFeedbackCount { get; set; }
            public int TotalNegativeFeedbackCount { get; set; }
            public int TotalPositiveFeedbackCount { get; set; }
            public string ModerationStatus { get; set; }
            public string SubmissionId { get; set; }
            public DateTime SubmissionTime { get; set; }
            public string UserNickname { get; set; }

            public SecondaryRatings SecondaryRatings { get; set; }

            public List<object> BadgesOrder { get; set; }
            public bool IsSyndicated { get; set; }
            public List<object> ProductRecommendationIds { get; set; }
            public Badges Badges { get; set; }
            public string Title { get; set; }
            public List<object> Photos { get; set; }
            public object Pros { get; set; }
            public object IsRecommended { get; set; }

            public int RatingRange { get; set; }
            public List<object> Videos { get; set; }
            public object UserLocation { get; set; }
            public TagDimensions TagDimensions { get; set; }
            public List<object> AdditionalFieldsOrder { get; set; }
            public object Cons { get; set; }
            public List<object> ContextDataValuesOrder { get; set; }
            public List<object> TagDimensionsOrder { get; set; }
            public AdditionalFields AdditionalFields { get; set; }
            public ContextDataValues ContextDataValues { get; set; }
            public List<object> ClientResponses { get; set; }
            public List<object> CommentIds { get; set; }
            public string ReviewText { get; set; }

        }

        public class SecondaryRatings
        {
            public SecondaryRatingFields EaseOfObtainingLoan { get; set; }
            public SecondaryRatingFields CustomerService { get; set; }
            public SecondaryRatingFields Responsiveness { get; set; }
            public SecondaryRatingFields FeesClosingCosts { get; set; }
            public SecondaryRatingFields SpeedOfObtainingLoan { get; set; }
            public SecondaryRatingFields Rate { get; set; }
        }
        public class SecondaryRatingFields
        {
            public string Value { get; set; }
            public string Id { get; set; }
            public string ValueLabel { get; set; }
            public string MaxLabel { get; set; }
            public string DisplayType { get; set; }
            public string Label { get; set; }
            public string ValueRange { get; set; }
            public string MinLabel { get; set; }
        }
        public class Badges
        {
        }

        public class TagDimensions
        {
        }
        public class AdditionalFields
        {
        }

        public class ContextDataValues
        {
        }
    }
}